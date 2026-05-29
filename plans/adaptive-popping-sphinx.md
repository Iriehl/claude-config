# Plan: Excel Generator — Green Colour Punch + Layout Polish

## Context
`generate-excel.py` produces the client RSA approval Excel. Several cosmetic and layout issues remain after the last round: colours are too blue/grey, blank rows between extension sections pad out the sheet, the coloured section header bars don't consistently span full width, and structured snippet / callout sections lack the two-colour treatment sitelinks already have. Also A1/A3/A10/A11 in the frozen label column need fill colour, and LP text cells need centre alignment.

## File to modify
`C:\Users\drew\luna\clients\misona\.claude\skills\rsa-maker\scripts\generate-excel.py`

---

## Changes (all in `generate_excel()`)

### 1 — Greener palette
Replace colour constants with more pronouncedly green values (push G channel higher relative to R/B):

| Constant | Current | New | Notes |
|---|---|---|---|
| `C_PREVIEW_BG` | `EBF3EB` | `DCF0DC` | preview rows + A1/A3/A10/A11 fill |
| `C_LABEL_BG` | `EEF3EE` | `E0EEE0` | label column |
| `C_SUBHD` | `D9E8D9` | `BDDCBD` | second colour in extension pairs |
| `C_EXT_BG` | `C8DFC8` | stays | already punchy enough |

### 2 — Remove blank rows between extension sections
- Change `ext_row = URL_ROW + 2` → `URL_ROW + 1` (removes gap before first section)
- Remove the two trailing `ext_row += 1` spacers (after sitelinks and after snippet)

### 3 — ext_header: fill A → last_ad_col always, text at configurable column
Current approach merges from `start_col` which leaves A unfilled when `start_col=B`.

Replace merge with individual cell fills across the full row, then place text in `text_col`:

```python
def ext_header(label, text_col=LABEL_COL):
    nonlocal ext_row
    for c in range(LABEL_COL, last_ad_col + 1):      # fill A → last_ad_col
        ws.cell(row=ext_row, column=c).fill = ext_hd_fill
    cell = ws.cell(row=ext_row, column=text_col)
    cell.value = label
    cell.font  = ext_hd_font
    ext_row += 1
```

Call sites: sitelinks stays `ext_header("Sitelink Extensions")`, snippet and callouts use `ext_header("Structured Snippet", FIRST_AD_COL)` and `ext_header("Callout Extensions", FIRST_AD_COL)`.

### 4 — ext_subrow: second colour bar, A → last_ad_col, no text
Add helper `ext_subrow()` that fills the next row with `C_SUBHD` across A to last_ad_col and increments `ext_row`. Call it immediately after every `ext_header()` for all three sections.

For sitelinks this replaces the existing manual sub-header cell loop — keep writing the four label strings (Title, Desc1, Desc2, URL) into their cells, but also call `ext_subrow()` to ensure the fill extends all the way to `last_ad_col` (the current loop only fills 4 cells, leaving extra ad columns unfilled when n > 3).

Revised sitelinks sub-header block:
```python
ext_subrow()   # fills A→last_ad_col with C_SUBHD
# then overwrite A-D with the label text (fill already set)
for j, sh in enumerate(["Title", "Description Line 1", "Description Line 2", "URL"]):
    cell = ws.cell(row=ext_row - 1, column=LABEL_COL + j)
    cell.value = sh
    cell.font  = Font(bold=True, size=9, color=C_DARK)
```

For structured snippet and callouts: just call `ext_subrow()` after `ext_header()` — no label text needed, colour bar only.

### 5 — Fill A column for visible preview rows
After the preview fill loop (which currently fills B → last_ad_col only), also fill A1, A3, A10, A11 with `C_PREVIEW_BG`:

```python
for r in [1, PREVIEW_HL_ROW, PREVIEW_DESC_ROW, PREVIEW_URL_ROW]:
    ws.cell(row=r, column=LABEL_COL).fill = pv_fill
```

Note: A1 gets the fill under the logo image (invisible but correct). A3 has LP label text, A10 has LP URL — fill is compatible with text.

### 6 — Centre justify LP label (A3) and LP URL (A10)
```python
lp_lbl.alignment = Alignment(horizontal="center", vertical="center")
lp_url.alignment = Alignment(horizontal="center", vertical="center", wrap_text=True)
```

---

## Execution order within the function
1. Update colour constants (top of file)
2. After `pv_fill` loop: fill A column rows 1/3/10/11
3. Update LP alignments
4. Replace `ext_header` with no-merge version + `text_col` param
5. Add `ext_subrow()` helper
6. Remove blank spacers (`ext_row` start change + two trailing `+= 1` removals)
7. Revise sitelinks sub-header block to use `ext_subrow()` then write label text
8. Add `ext_subrow()` calls after snippet and callout `ext_header()` lines

## Verification
```
cd C:\Users\drew\luna\clients\misona
python .claude/skills/rsa-maker/scripts/generate-excel.py \
  created/rsas/20260527_brand-beach-towels-ads.json \
  created/rsas/20260527_brand-beach-towels-approval.xlsx \
  created/rsas/20260527_brand-beach-towels-extensions.json
```
Open file and confirm:
- All background fills are clearly green (not blue-grey)
- A1, A3, A10, A11 have green fill
- LP label and URL are centre-aligned in their cells
- No blank rows between Sitelink, Snippet, Callout sections
- All three section header bars span A → last ad column (E for 4 ads)
- All three sections show two-colour treatment (dark row + light row)
- Light-colour row spans A → last_ad_col on all three sections
- Sitelink sub-header labels (Title etc.) still present; fill extends past column D to E

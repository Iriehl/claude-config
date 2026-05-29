---
name: feedback-report-versioning
description: Never overwrite report HTML files — version them the same way as emails
metadata: 
  node_type: memory
  type: feedback
  originSessionId: dac0093a-ca0c-4799-ac7c-1b28b71f963c
---

Never overwrite a working report draft. Create a new versioned file for each iteration: `-DRAFT.html`, `-v2.html`, `-v3.html`. Same rule as emails.

**Why:** Previous Allure report iterations were lost because we kept overwriting `sample-monthly-report.html`. No git history existed so they were unrecoverable.

**How to apply:** The `sample-monthly-report.html` in each client folder is the design template only — update it deliberately and commit to git. All working drafts and iterations are versioned files in `created/reports/`.

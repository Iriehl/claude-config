---
name: conversion-value-currency
description: Always use GBP (£) for conversion values on UK accounts — was incorrectly set in USD during Surrey Fire session
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 4ca64a78-f0a2-444e-942d-fa856ea6fe5b
---

Always set conversion values in the account's billing currency. UK accounts use GBP (£).

**Why:** Surrey Fire conversion values were set numerically (100, 0) without verifying currency — should have been explicitly confirmed as £100 GBP, not $100 USD. The Google Ads and Microsoft Ads conversion value fields inherit account currency, but this must be consciously confirmed when working across multi-currency client rosters.

**How to apply:** Before setting any conversion value, check the account currency (visible in account settings or billing). For UK accounts (Surrey Fire, Misona, Allure, Contrelle are all GBP), state the value as £X explicitly when logging/reporting changes. If ever unsure, check the currency symbol shown in the conversion goal Revenue field in the UI before saving.

---
layout: page
title: "Documentation Setup Prompt"
permalink: /chatgpt/documentation-setup-prompt.html
modify_date: 2025-01-06
---

# 📖 Documentation Setup Prompt

This page contains the **final prompt** that guided the structured setup of HVCMS documentation.

## 🛠️ Objective

Set up a **fully structured documentation system** for HVCMS using **Jekyll with the TeXt Theme**, ensuring:
✅ A clean and modular **folder structure** with collections for easy navigation.
✅ A **consistent navigation system** using `_data/navigation.yml`.
✅ A **GitHub Pages setup with a custom domain** (`docs.hvboom.ch`) for easy public access.
✅ A **Phusion Passenger + Apache configuration** for local and production hosting.
✅ Proper **accessibility and SEO** considerations.
✅ A **GitHub Flow workflow** with proper branch management and tagging.
✅ **Lessons learned** from multiple iterations.

## 📂 Documentation Structure

All documentation files are stored inside **`content/`**, with each section as a Jekyll collection.

```
content/
├── _usage/                 # End-user documentation
├── _development/           # Developer documentation
├── _chatgpt/               # ChatGPT development insights
│   ├── documentation-setup-prompt.md  # This document
│   ├── lessons-learned.md             # Summary of findings
assets/                 # Static assets
_site/                  # Generated output
```

## 🔄 GitHub Flow & Versioning

- **Branching model** → All changes were done in a dedicated feature branch (`docs-setup`).
- **Pull Request Workflow** → Merging after review and validation.
- **Tagging & Versioning** → Tagged as `v0.2.0` upon completion.

## 📢 Summary

This setup provides a **scalable, flexible, and well-documented system** for managing HVCMS documentation.

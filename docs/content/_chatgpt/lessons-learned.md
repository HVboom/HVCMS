---
layout: page
title: "Lessons Learned"
permalink: /chatgpt/lessons-learned.html
modify_date: 2025-01-06
---

# 📖 Lessons Learned: HVCMS Documentation Setup

This document captures key insights, challenges, and best practices from setting up the HVCMS documentation system.

## 📌 Overview

- ✅ **Jekyll + TeXt Theme** for a clean static site setup.
- ✅ **Collections-based organization** for modular content.
- ✅ **Multi-environment hosting** via **GitHub Pages & Apache + Passenger**.
- ✅ **Automated GitHub Flow & CI/CD** for seamless updates.

## 🛠️ 1. Documentation Structure

All documentation files are stored inside the **`content/`** folder, with each section as a Jekyll collection.

```
content/
├── _usage/                 # End-user documentation
├── _development/           # Developer documentation
├── _chatgpt/               # ChatGPT development insights
│   ├── lessons-learned.md  # This document
assets/                     # Static assets
_site/                      # Generated output
```

✅ **Uses `collections_dir: content`** → No need for `source` per collection.
✅ **Flat URL structure** → `/usage/setup.html` instead of `/usage/setup/index.html`.

## 📂 2. Navigation Setup

Navigation is managed via `_data/navigation.yml` to ensure dynamic linking.

## 🌐 3. GitHub Pages Hosting

- Hosted at **[`docs.hvboom.ch`](https://docs.hvboom.ch)**.
- Uses **GitHub’s static workflow** → [`.github/workflows/static.yml`](https://github.com/HVboom/HVCMS/blob/main/.github/workflows/static.yml).
- **CNAME entry added to DNS provider**:
  ```
  docs.hvboom.ch
  ```

✅ **No additional DNS records needed** beyond the **CNAME entry**.

## 🖥️ 4. Local Hosting via Apache + Passenger

For local testing & production deployment, the documentation is served via **Apache + Passenger**.

✅ **Uses a generalized Apache macro** for flexible configurations.

## 🔄 5. GitHub Flow & Versioning

1. **Feature Branches** → Work happens in isolated branches.
2. **Pull Requests & Code Review** → Merged after approval.
3. **Tagged Versions** → Major updates tracked via **semantic versioning**.

```bash
git checkout -b docs-setup
# Make changes...
git commit -m "Complete documentation setup"
git push origin docs-setup
git tag -a v0.2.0 -m "Complete Jekyll documentation setup"
git push origin v0.2.0
```

✅ **Ensures well-tracked documentation updates**.

## 📌 6. Key Lessons Learned

- **Use `collections_dir: content`** → Keeps collections structured.
- **Hyphens (`-`) in filenames** → Prevents Jekyll converting `_` to `-`.
- **Landing pages (`index.md`) for collections** → Prevents Apache `403 Forbidden` errors.
- **Disabled TOC & titles** (`aside: toc: false`, `show_title: false`).
- **Explicit `modify_date` tracking** → Clear last update info.
- **SimpleCov workflow fix** → Prevented unstaged changes in Git.

---

---
layout: article
title: "App Setup Prompt"
permalink: /chatgpt/app-setup-prompt.html
modify_date: 2025-01-06
---

# 🏗️ HVCMS App Setup Prompt

Set up a Rails 8 application named **HVCMS** that serves as a CMS. The application should adhere to the following requirements:

---

## Environment Details

1. **Operating System**: Ubuntu 24.04
2. **Ruby Version**: Latest version (currently 3.3.6), managed with RVM and a dedicated gemset (`hvcms`)
3. **Database**: PostgreSQL 16.6 with UUID as the default primary key type
4. **Hosting**: PhusionPassenger with waitlist configuration for `*.hvboom.biz` in development
5. **Sensitive Data Storage**: Use environment-specific credentials for sensitive data (e.g., database password)

---

## Application Setup Requirements

### 1. Generate Rails Application

- **Name**: HVCMS
- **CSS**: Tailwind CSS with a greenish color scheme (aligned to HyperUI)
- **Database**: PostgreSQL
- **Interactivity**: Hotwire and Stimulus (pre-configured controllers)
- **Skip**:
  - Action Mailbox
  - Action Mailer
  - System tests
  - Minitest
  - Helper files
  - Empty JavaScript and CSS files for models

**Command**:

```bash
rails new HVCMS --css=tailwind --database=postgresql --skip-action-mailbox --skip-action-mailer --skip-system-test --skip-m --skip-sprockets
```

### 2. Dedicated Gemset

- Create `.ruby-version` and `.ruby-gemset`:

```
.ruby-version: 3.3.6
.ruby-gemset: hvcms
```

### 3. Configure UUID for Primary Keys

In `config/application.rb`:

```ruby
config.generators do |g|
  g.orm :active_record, primary_key_type: :uuid
end
```

### 4. PhusionPassenger Configuration

In `config/application.rb`:

```ruby
config.hosts << /\Ahv.*\.hvboom\.biz\Z/
```

### 5. Local File Storage

- Use ActiveStorage for local file and image uploads.

---

## Feature Requirements

### 1. Authentication

- Implement roles:
  - Admins can manage users and reset passwords
- Multi-language support (English and German locales)
- Protect CMS routes with `require_login` helper

### 2. Page Types

- **Text Pages**: Action Text for rich text editing
- **Slideshow Pages**:
  - Drag-and-drop uploads
  - Carousel or grid view
  - Drag-and-drop reordering
- **Map Pages**:
  - Static Google Maps
  - Routing links
- **Future**: Contact form support

### 3. Menu Management

- Flexible user-defined structures for generated HTML pages
- Support icons, tooltips, and multi-level nesting

### 4. File & Picture Uploads

- Thumbnails generation using MiniMagick
- Cropping functionality with predefined aspect ratios

### 5. Export CMS Content

- Export pages to static HTML with friendly URLs
- Name assets based on page, gallery, and sort position
- Export only published pages and related content

---

## Development Practices

### 1. Testing Framework

- Use RSpec
- Support Shoulda Matchers, FactoryBot, and Faker

### 2. Integration Tests

- Test on latest Safari, Chrome, Firefox, and Edge using Capybara and Selenium
- Focus on realistic scenarios with FactoryBot and Faker
- Include mobile browser testing for generated pages

### 3. Accessibility

- Ensure WCAG 2.1 AA compliance for app and generated pages
- Use external tools (e.g., Lighthouse, axe-core)

### 4. Semantic Versioning

- Maintain `CHANGELOG.md` manually
- Generate change summaries on request
- Use Git pre-push hooks to enforce `vX.Y.Z` format
- Document rules in `CONTRIBUTING.md`:

```
- Use vX.Y.Z format for all Git tags
- Increment:
  - Major (X) for breaking changes
  - Minor (Y) for new features
  - Patch (Z) for bug fixes
```

### 5. Git Workflow

- Follow A Successful Git Branching Model:
  - `feature/*`, `release/*`, `hotfix/*` branches
  - Semantic version tags

**Example**:

```bash
git tag -a v1.0.0 -m "Release v1.0.0"
```

### 6. Documentation

- Use `doc` folder for product documentation
- Base documentation on Jekyll + TeXt Theme
- Serve `doc` folder as GitHub Pages base

---

## Next Steps

Start with:

1. Setting up the Rails application
2. Implementing authentication
3. Building the CMS page types
4. Setting up documentation

---

_Let me know where you'd like to begin!_

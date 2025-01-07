# Changelog

## [v0.2.0] - 2025-01-06

### Added

- **Full documentation setup** using Jekyll and the TeXt theme.
- **Collections-based structure** with `content/` as the root.
- **Navigation YAML** for dynamic menu integration.
- **Auto-generated permalinks** to ensure a clean URL structure.
- **Modify date (`modify_date`) tracking** for all documentation pages.

### Changed

- **Folder restructure:** Moved `_usage`, `_development`, `_chatgpt` under `content/`.
- **Enabled `collections_dir: content`** to streamline collection handling.
- **Renamed files to use hyphens** instead of underscores for consistency.

### Fixed

- **Resolved Apache Forbidden (403) errors** by adding landing pages.
- **Removed unnecessary TOC and titles** from section index pages.

## [0.1.0] - 2024-12-17

### Added

- **Initial Rails Application Setup**: Generated a new Rails application, establishing the foundational structure and configurations. [oai_citation_attribution:2‡Ruby on Rails Guides](https://guides.rubyonrails.org/configuring.html?utm_source=chatgpt.com)

- **RSpec Integration**: Implemented RSpec as the primary testing framework, replacing the default test suite to enhance testing capabilities.

- **SimpleCov Configuration**: Set up SimpleCov to monitor test coverage, ensuring code quality and identifying untested parts of the application.

- **Headless Chrome Testing**: Installed and configured Headless Chrome on the Ubuntu environment for efficient browser testing, facilitating automated end-to-end tests.

- **Host Authorization Adjustment**: Modified the test environment to permit requests from `127.0.0.1`, resolving blocked host errors during test execution.

- **Semantic Versioning Adoption**: Established semantic versioning practices to clearly communicate changes and maintain version control, starting with version `0.1.0`.

- **Changelog Documentation**: Created an initial changelog to document setup processes and configurations, promoting transparency and ease of maintenance.

- **GitHub Actions CI Workflow**: Set up Continuous Integration (CI) using GitHub Actions to automate testing and ensure code quality on each push and pull request. [oai_citation_attribution:1‡Dev.to](https://dev.to/buildwithallan/how-to-set-up-a-ci-workflow-using-github-actions-4818?utm_source=chatgpt.com)

- **Generator Configuration in `config/application.rb`**: Customized Rails generators in `config/application.rb` to streamline development by modifying default behaviors, such as skipping the creation of helper files during scaffold generation. [oai_citation_attribution:0‡Ruby on Rails Guides](https://guides.rubyonrails.org/v8.0/generators.html?utm_source=chatgpt.com)

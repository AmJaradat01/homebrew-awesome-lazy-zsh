# Homebrew Tap for Awesome-Lazy-Zsh

[![Homebrew](https://img.shields.io/badge/Homebrew-tap-FBB040.svg?logo=homebrew)](https://brew.sh) [![Formula Version](https://img.shields.io/badge/formula-v3.4.4-blue.svg)](https://github.com/AmJaradat01/awesome-lazy-zsh/releases/latest) [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Official Homebrew tap for [Awesome-Lazy-Zsh](https://github.com/AmJaradat01/awesome-lazy-zsh) — the easiest way to set up and manage your Zsh environment.

## Installation

### Quick Install
```bash
brew install amjaradat01/awesome-lazy-zsh/awesome-lazy-zsh
```

### Or Tap First
```bash
brew tap amjaradat01/awesome-lazy-zsh
brew install awesome-lazy-zsh
```

### Run
```bash
awesome-lazy-zsh
```

## Update

```bash
brew update && brew upgrade awesome-lazy-zsh
```

## What's Included

### v3.4.4 (Latest)
- **Security Hardening** — managed-block `.zshrc` approach, atomic writes, pinned dependencies
- **Update Notification** — automatic version checks with interactive update prompt
- **Resume Setup** — checkpoint-based state persistence, never lose progress
- **Service Installation** — MongoDB, PostgreSQL, MySQL, Redis, RabbitMQ, Elasticsearch, Memcached
- **Cloud CLI Tools** — AWS CLI, Google Cloud SDK, Azure CLI
- **DevOps Tools** — kubectl, Terraform, Ansible, Docker Compose
- **Language Runtimes** — Python, Go, Rust, Java/OpenJDK
- **42 Plugins** — databases, cloud, DevOps, languages, productivity shortcuts
- **5 Themes** — Spaceship, Powerlevel10k, Starship, Agnoster, Robbyrussell
- **Profiles** — save and switch between configurations
- **Cross-Platform** — macOS (Intel & Apple Silicon), Linux, and Windows (WSL2)

## Formula Details

| Property | Value |
|----------|-------|
| **Name** | `awesome-lazy-zsh` |
| **Version** | 3.4.4 |
| **License** | MIT |
| **Dependencies** | `git`, `node` |
| **Homepage** | [github.com/AmJaradat01/awesome-lazy-zsh](https://github.com/AmJaradat01/awesome-lazy-zsh) |

## Brewfile

Add to your `Brewfile` for automated setup:

```ruby
tap "amjaradat01/awesome-lazy-zsh"
brew "awesome-lazy-zsh"
```

Then run:
```bash
brew bundle
```

## Uninstall

```bash
brew uninstall awesome-lazy-zsh
brew untap amjaradat01/awesome-lazy-zsh  # optional
```

## Troubleshooting

### Formula Not Found
```bash
brew tap amjaradat01/awesome-lazy-zsh
brew update
brew install awesome-lazy-zsh
```

### Upgrade Issues
```bash
brew update
brew upgrade awesome-lazy-zsh
# If that fails:
brew uninstall awesome-lazy-zsh
brew install awesome-lazy-zsh
```

### Check Installation
```bash
brew info awesome-lazy-zsh
which awesome-lazy-zsh
```

## Links

- [Awesome-Lazy-Zsh Repository](https://github.com/AmJaradat01/awesome-lazy-zsh)
- [Releases & Changelog](https://github.com/AmJaradat01/awesome-lazy-zsh/releases)
- [Report Issues](https://github.com/AmJaradat01/awesome-lazy-zsh/issues)
- [Homebrew Documentation](https://docs.brew.sh)

## License

[MIT License](LICENSE)

# Homebrew Tap for Awesome-Lazy-Zsh

[![Homebrew](https://img.shields.io/badge/Homebrew-tap-FBB040.svg?logo=homebrew)](https://brew.sh) [![Formula Version](https://img.shields.io/badge/formula-v3.6.2-blue.svg)](https://github.com/AmJaradat01/awesome-lazy-zsh/releases/latest) [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

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
# Update via Homebrew
brew update && brew upgrade awesome-lazy-zsh

# Or use the built-in update command
awesome-lazy-zsh update
```

## What's Included

### v3.6.2 (Latest)
- **Signed release** — GPG-signed tags for GitHub verification
- **Fix: Homebrew trust for third-party taps** — MongoDB and other non-official tap packages now install correctly
- **Mobile Development Plugins** — Flutter, React Native, Fastlane, Firebase (400+ aliases)
- **Explicit Update Command** — run `awesome-lazy-zsh update` to check and install updates
- **Non-blocking Notifications** — update availability shown without interrupting workflow
- **Homebrew Upgrade Verification** — ensures brew upgrade actually installed the expected version
- **Smart .zshrc Parser** — section detection, duplicate removal, syntax validation
- **Incremental Updates** — add/remove plugins, change themes without full reinstall
- **Service Installation** — MongoDB, PostgreSQL, MySQL, Redis, RabbitMQ, Elasticsearch, Memcached
- **Cloud CLI Tools** — AWS CLI, Google Cloud SDK, Azure CLI
- **DevOps Tools** — kubectl, Terraform, Ansible, Docker Compose
- **Language Runtimes** — Python, Go, Rust, Java/OpenJDK
- **46+ Plugins** — databases, cloud, DevOps, languages, mobile, productivity shortcuts
- **5 Themes** — Spaceship, Powerlevel10k, Starship, Agnoster, Robbyrussell
- **Profiles** — save and switch between configurations
- **Cross-Platform** — macOS (Intel & Apple Silicon), Linux, and Windows (WSL2)

## Formula Details

| Property | Value |
|----------|-------|
| **Name** | `awesome-lazy-zsh` |
| **Version** | 3.6.2 |
| **License** | MIT |
| **Dependencies** | `fzf`, `git`, `node`, `starship`, `zsh` |
| **Homepage** | [github.com/AmJaradat01/awesome-lazy-zsh](https://github.com/AmJaradat01/awesome-lazy-zsh) |

## CLI Usage

```bash
# Interactive setup
awesome-lazy-zsh

# Check for and install updates
awesome-lazy-zsh update

# Quick configuration
awesome-lazy-zsh --add-plugin zsh-autosuggestions
awesome-lazy-zsh --remove-plugin example-plugin
awesome-lazy-zsh --set-theme powerlevel10k

# Maintenance
awesome-lazy-zsh --analyze
awesome-lazy-zsh --repair
awesome-lazy-zsh --clean-duplicates

# Info
awesome-lazy-zsh --version
awesome-lazy-zsh --help
awesome-lazy-zsh --doctor
```

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
awesome-lazy-zsh --doctor
```

## Links

- [Awesome-Lazy-Zsh Repository](https://github.com/AmJaradat01/awesome-lazy-zsh)
- [Releases & Changelog](https://github.com/AmJaradat01/awesome-lazy-zsh/releases)
- [Report Issues](https://github.com/AmJaradat01/awesome-lazy-zsh/issues)
- [Homebrew Documentation](https://docs.brew.sh)

## License

[MIT License](LICENSE)

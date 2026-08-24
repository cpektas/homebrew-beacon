# Beacon Homebrew tap

[Beacon](https://cpektas.github.io/beacon/) is a native macOS status light for
Claude Code and Codex sessions.

```bash
brew install --cask cpektas/beacon/beacon
```

The cask installs Beacon's signed and notarized public release. Beacon updates
itself after installation, or Homebrew can update it with:

```bash
brew upgrade --cask beacon
```

Beacon requires macOS 14 or later.

The tap checks Beacon's latest public release daily and updates the cask from
the release DMG's measured SHA-256, so shipping the app does not create a
second manual release step.

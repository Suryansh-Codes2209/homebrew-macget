# homebrew-macget

Homebrew tap for [MacGet](https://macget.suryansh.work/) — a multi-threaded
download manager for macOS.

## Install

```bash
brew install --cask suryansh-codes2209/macget/macget
```

The fully-qualified name auto-taps, so there is no separate `brew tap` step.

## Requirements

- macOS 26.4 (Tahoe) or later
- Apple silicon

## Notes

MacGet updates itself through Sparkle, so the cask is marked `auto_updates true`.
A bare `brew upgrade` (no cask named) will skip it for that reason. Naming it
explicitly still upgrades it: `brew upgrade macget` reinstalls the cask's
pinned version regardless.

MacGet is not currently notarized by Apple. The cask removes the quarantine
attribute after install so the app launches without a Gatekeeper prompt.

## Uninstall

```bash
brew uninstall --cask macget          # remove the app
brew uninstall --cask --zap macget    # also remove queue, settings, and caches
```

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
`brew upgrade` will not replace a copy that has already updated itself; use
`brew upgrade --greedy macget` if you want Homebrew to reinstall the pinned version.

MacGet is not currently notarized by Apple. The cask removes the quarantine
attribute after install so the app launches without a Gatekeeper prompt.

## Uninstall

```bash
brew uninstall --cask macget          # remove the app
brew uninstall --cask --zap macget    # also remove queue, settings, and caches
```

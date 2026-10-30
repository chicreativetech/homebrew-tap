# chicreativetech/homebrew-tap

```
brew tap chicreativetech/tap
brew trust --cask chicreativetech/tap/scribui
brew install --cask chicreativetech/tap/scribui
```

Homebrew asks you to trust a cask from a tap that isn't Homebrew's own once; `brew trust` does that for this cask only.

[ScribUI](https://github.com/chicreativetech/scribui): visual review between you and your coding agent. The app updates itself; `brew upgrade` leaves it alone. The cask is updated by ScribUI's release workflow when a release is published.

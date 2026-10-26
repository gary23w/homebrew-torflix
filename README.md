# Torflix for Homebrew

Official [Torflix](https://github.com/gary23w/torflix) cask for Intel and Apple Silicon Macs.

```sh
brew tap gary23w/torflix
brew install --cask torflix
```

The cask downloads the matching architecture's DMG from the official GitHub release and checks its SHA-256 checksum before installing `Torflix.app`.

These are developer builds and are not Apple-notarized. The cask preserves macOS's normal security checks.

FFmpeg can be installed separately for Dolby/DTS audio conversion:

```sh
brew install ffmpeg
```

Only download or stream content you are authorized to access.

Source, release notes and support: [gary23w/torflix](https://github.com/gary23w/torflix).

Contact: info@garrettstimpson.ca

License: MIT OR Apache-2.0.

# Homebrew tap for OneBrain CLI

Homebrew tap for [onebrain-ai/onebrain-cli](https://github.com/onebrain-ai/onebrain-cli) — the local-first Rust binary that powers the OneBrain personal AI OS for Obsidian.

## Install

```bash
brew tap onebrain-ai/onebrain
brew install onebrain
```

Or as a one-liner:

```bash
brew install onebrain-ai/onebrain/onebrain
```

Then verify:

```bash
onebrain --version
# → onebrain 3.0.0
```

## Supported platforms

| Platform | Architecture |
|---|---|
| macOS | Apple Silicon (M1–M5) |
| macOS | Intel |
| Linux | ARM64 (glibc) |
| Linux | x86_64 (glibc) |

Windows users — install from the [GitHub Releases](https://github.com/onebrain-ai/onebrain-cli/releases/latest) page.

## Updates

The CLI ships with a built-in self-installer that bypasses Homebrew:

```bash
onebrain update          # prompt-and-confirm
onebrain update --check  # dry-run
```

When a new version lands in this tap, `brew upgrade onebrain` works as expected. The two paths interoperate cleanly — both atomically swap the running binary.

## Security / trust model

The Formula's `sha256` fields verify each downloaded archive matches the published GitHub Release. Homebrew's TLS chain + the integrity check together cover the install path. The CLI's own `onebrain update` path uses a different trust model — see the [CLI README](https://github.com/onebrain-ai/onebrain-cli#security--trust-model) for details.

## License

This tap is published under the same license as the upstream CLI: [MIT](https://github.com/onebrain-ai/onebrain-cli/blob/main/LICENSE-MIT) OR [Apache-2.0](https://github.com/onebrain-ai/onebrain-cli/blob/main/LICENSE-APACHE), at your option.

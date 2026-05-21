# Homebrew tunnelto

Homebrew tap for the `tunnelto` client.

Users install with:

```bash
brew tap tunnel-to/tunnelto
brew install tunnelto
tunnelto 3000
```

## Release Assets

Each client release must publish:

- `tunnelto-darwin-arm64.tar.gz`
- `tunnelto-darwin-amd64.tar.gz`
- `tunnelto-linux-arm64.tar.gz`
- `tunnelto-linux-amd64.tar.gz`

Each tarball must contain the `tunnelto` binary at the archive root with no nested directories.

## Formula Update

1. Build and upload the four release assets.
2. Replace the version, release URLs, and SHA256 values in `Formula/tunnelto.rb`.
3. Run `brew audit --new --formula Formula/tunnelto.rb`.
4. Run `brew install ./Formula/tunnelto.rb`.
5. Commit `Formula/tunnelto.rb`.

Useful checksum command:

```bash
shasum -a 256 tunnelto-linux-amd64.tar.gz
```

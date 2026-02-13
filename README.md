# Indubitably Homebrew Tap (Template)

This folder is a template for a separate Homebrew tap repo, for example:

- GitHub repo: `indubitably/homebrew-tap`
- Tap name: `indubitably/tap`

## Files
- `Casks/indubitably.rb`: Homebrew cask for the `indubitably` CLI.
  - Currently populated with tested dev values for `0.1.0-dev.1`.

## Bootstrap A New Tap Repo

```sh
mkdir -p ~/src/homebrew-tap
cp -R homebrew-tap-template/. ~/src/homebrew-tap/
cd ~/src/homebrew-tap
git init
git add .
git commit -m "Initialize Indubitably Homebrew tap"
git branch -M main
git remote add origin git@github.com:indubitably/homebrew-tap.git
git push -u origin main
```

## Updating For A Release
1. Upload the macOS tarballs to your public downloads origin (S3 + CloudFront).
2. Generate the cask file:

```sh
./scripts/generate_homebrew_cask.py \
  --version <VERSION> \
  --base-url https://downloads.indubitably.ai/cli/indubitably \
  --sha-arm <SHA256> \
  --sha-intel <SHA256> \
  > Casks/indubitably.rb
```

Or compute SHA256 from local tarballs:

```sh
./scripts/generate_homebrew_cask.py \
  --version <VERSION> \
  --base-url https://downloads.indubitably.ai/cli/indubitably \
  --arm-tar indubitably-aarch64-apple-darwin.tar.gz \
  --intel-tar indubitably-x86_64-apple-darwin.tar.gz \
  > Casks/indubitably.rb
```

3. Test locally:

```sh
brew uninstall --cask indubitably || true
brew install --cask indubitably/tap/indubitably --no-quarantine
indubitably --version
```

4. Commit and push:

```sh
git add Casks/indubitably.rb
git commit -m "indubitably <VERSION>"
git push
```

See `specs/indubitably-homebrew-tap.md` for the full design.

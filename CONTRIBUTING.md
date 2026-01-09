# Contributing to homebrew-awesome-lazy-zsh

## Updating the Formula

When a new version of awesome-lazy-zsh is released:

1. Get the new SHA256:
```bash
curl -sL https://github.com/AmJaradat01/awesome-lazy-zsh/archive/refs/tags/vX.X.X.tar.gz | shasum -a 256
```

2. Update `Formula/awesome-lazy-zsh.rb`:
   - Update `url` with new tag
   - Update `sha256` with new hash
   - Update `version`

3. Test locally:
```bash
brew install --build-from-source Formula/awesome-lazy-zsh.rb
```

4. Submit PR

## Testing

```bash
brew test-bot --only-formulae
```

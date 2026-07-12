# Miabi Homebrew Tap

Homebrew formulae for [Miabi](https://miabi.io) — the open-source, self-hosted hosting control panel
for modern containerized apps.

Works on **macOS and Linux**, on both Apple Silicon/arm64 and x86_64.

## Install

```sh
brew install miabi-io/tap/miabi
```

…or tap once and install by name. Homebrew 6 requires third-party taps to be
explicitly trusted, so `brew trust` is needed for the short form:

```sh
brew tap miabi-io/tap
brew trust miabi-io/tap
brew install miabi
```

## Packages

| Formula | Description                                     | Source |
|---------|-------------------------------------------------|--------|
| `miabi` | Command-line client for the Miabi control panel | [miabi-io/miabi-cli](https://github.com/miabi-io/miabi-cli) |

## Upgrade

```sh
brew update && brew upgrade miabi
```

## Uninstall

```sh
brew uninstall miabi
brew untap miabi-io/tap   # optional: remove the tap too
```

## Other install methods

Not using Homebrew? The CLI also ships as a binary, a Go package, and a container image:

```sh
go install github.com/miabi-io/miabi-cli@latest
```

```sh
docker run --rm -e MIABI_URL -e MIABI_TOKEN miabi/miabi-cli:latest whoami
```

Prebuilt binaries (incl. Windows) are on the
[releases page](https://github.com/miabi-io/miabi-cli/releases/latest).

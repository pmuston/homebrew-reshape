# homebrew-reshape

Homebrew tap for [reshape](https://github.com/pmuston/reshape) — convert
tabular records between JSON, JSONL, and CSV.

```bash
brew tap pmuston/reshape
brew trust pmuston/reshape   # required for third-party taps
brew install reshape-cli
```

On Linux or without a package manager:

```bash
curl -fsSL https://pmuston.github.io/install.sh | sh -s reshape-cli
```

**Docs:** <https://pmuston.github.io/reshape-cli> · after installing, `man
reshape-cli` has the same reference offline.

> The installed binary is `reshape-cli`: homebrew/core already ships an
> unrelated `reshape` (a Postgres migration tool), so this one takes the
> `-cli` suffix to keep the install name unambiguous.

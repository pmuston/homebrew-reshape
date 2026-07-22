# homebrew-reshape

Homebrew tap for [reshape](https://github.com/pmuston/reshape) — convert
tabular records between JSON, JSONL, and CSV.

```bash
brew tap pmuston/reshape
brew trust pmuston/reshape           # required for third-party taps
brew install pmuston/reshape/reshape # fully qualified: homebrew-core also has a `reshape`
```

> **Note:** homebrew/core ships an unrelated `reshape` (a Postgres migration
> tool), so the bare name `brew install reshape` resolves to that one. Always
> install this tool with the fully-qualified `pmuston/reshape/reshape`.

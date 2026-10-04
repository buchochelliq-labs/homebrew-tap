# buchochelliq-labs/homebrew-tap

Homebrew formulae for [OpenDataSuite (ODS)](https://github.com/buchochelliq-labs/open-data-suite).

```sh
brew install buchochelliq-labs/tap/ods
ods version
```

The formula installs the prebuilt `ods` binary from the
[GitHub release](https://github.com/buchochelliq-labs/open-data-suite/releases) for
macOS and Linux (arm64 and x86_64). Other ways to install, and how to verify a download:
[the install guide](https://buchochelliq-labs.github.io/open-data-suite/install/).

`Formula/ods.rb` is generated: each ODS release renders it from
`packaging/homebrew/ods.rb.tmpl` and attaches it to the release as `ods.rb`. Don't edit
it here; change the template in open-data-suite and copy the next release's `ods.rb`.

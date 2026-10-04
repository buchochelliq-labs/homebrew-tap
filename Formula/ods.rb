# Homebrew formula for `ods`, rendered for each release by scripts/render-homebrew-formula.py
# (release.yml) and attached to the GitHub release as `ods.rb`. Copy it to
# `Formula/ods.rb` in the tap repository; see docs/install.md.
#
# Generated file: edit packaging/homebrew/ods.rb.tmpl in open-data-suite, not the tap.
class Ods < Formula
  desc "Explainable, provider-neutral tooling for dbt projects (OpenDataSuite)"
  homepage "https://buchochelliq-labs.github.io/open-data-suite/"
  version "0.0.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/buchochelliq-labs/open-data-suite/releases/download/v0.0.1/ods-v0.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "ec1daa82681355de8f78afa8f90d7a2987bc88f425ff48c36bf07705f0aa39ee"
    end
    on_intel do
      url "https://github.com/buchochelliq-labs/open-data-suite/releases/download/v0.0.1/ods-v0.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "e4ff493e70a2894faaa9e137723638e301fa1f77c83f3819e22298af31cf5508"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/buchochelliq-labs/open-data-suite/releases/download/v0.0.1/ods-v0.0.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "83b6c755f8f42ac72b4b7538560e1ca9d26d4dbbaf7a5c0dd33ba2a799b42592"
    end
    on_intel do
      url "https://github.com/buchochelliq-labs/open-data-suite/releases/download/v0.0.1/ods-v0.0.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b40c26c26087d37827d94880b51e542cc05a4667f5caf192fb49287fd2f23bc"
    end
  end

  def install
    bin.install "ods"
    doc.install "THIRD-PARTY-LICENSES.html", "CHANGELOG.md"
  end

  test do
    assert_match "ods: #{version}", shell_output("#{bin}/ods version")
  end
end

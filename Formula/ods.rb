# Homebrew formula for `ods`, rendered for each release by scripts/render-homebrew-formula.py
# (release.yml) and attached to the GitHub release as `ods.rb`. Copy it to
# `Formula/ods.rb` in the tap repository; see docs/install.md.
#
# Generated file: edit packaging/homebrew/ods.rb.tmpl in open-data-suite, not the tap.
class Ods < Formula
  desc "Explainable, provider-neutral tooling for dbt projects (OpenDataSuite)"
  homepage "https://buchochelliq-labs.github.io/open-data-suite/"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/buchochelliq-labs/open-data-suite/releases/download/v0.1.1/ods-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "60a5442e0983fccdf62752c0f0971d81e3b6789298540d490330a469c1efca7a"
    end
    on_intel do
      url "https://github.com/buchochelliq-labs/open-data-suite/releases/download/v0.1.1/ods-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "a14265f368bd131cb74c692a121d71fc847ade741dc512b89614362469e7718d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/buchochelliq-labs/open-data-suite/releases/download/v0.1.1/ods-v0.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4f5a3518abc369c92f11a9926b042c89d44208a6463d799f575e732c9b971002"
    end
    on_intel do
      url "https://github.com/buchochelliq-labs/open-data-suite/releases/download/v0.1.1/ods-v0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c93feb64b2cc40f76a96fbbf0a05ece1566ee66c8ea750006507dfad05b15184"
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

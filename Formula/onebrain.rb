class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"
  version "3.0.0"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.0.0/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "93c55452003166428d50cb6ca69dff8541301e612fbd07f6a8e3b4779ee28013"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.0.0/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "0f5741a3eb3036ac03f2fbfd4415305bac86be328fd8e928860d320f3079ef5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.0.0/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "af44b5c2f1fa44429d975fb4feb465e93550c4271671c8f4bf8a4823710eac62"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.0.0/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6a68d006d27b82be99b67aafae6d3a1cdcd5368c91f46fe43adab8e791d282fe"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

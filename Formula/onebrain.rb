class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.14/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "49d5adbbc403781be3938e365105f6c47583bb3950f7237e0767aa0926fedaf6"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.14/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "b0889a881ec85e7a61356f7397f5376cd3f33a36328701b04a6862f0d03efef5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.14/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "350c639450e4518fb64675b737113b3f80f7d7d17176dd6b17a895040542c995"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.14/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "34352e8ef4bea8239d886b081c1f8eb8895c95a0d4ada3175e2a67b46feabfff"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

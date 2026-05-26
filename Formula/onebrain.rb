class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.5/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "01e74d401d388b9d26c077f591f62060643c97ae6d3f8dadb54cf0b123b326f5"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.5/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "0853e39505b38f895c04639bf3f6258f7ddc0e01003916078ad47fe5683f42be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.5/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "02f8891bdddb9c78bcd0ede2ae0c5d38f6026d6cfbf5e24d244b106cb58206e2"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.5/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37f4541388892003e0c9e6ac7df40e24e1c262fb816d09b4c6795984ff3db9be"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

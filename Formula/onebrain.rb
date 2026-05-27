class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.3/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "abc9243e05bf8a612ee1072a400110650f12b72750987ae681c9e7bd0e33a94b"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.3/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "19dbc0e4e423caeed9a7fe80295a4c02c343be3f9f420587bb821008f0676a6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.3/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "84dc9d0e6112c6722820cded6caa4b637f2d688abcd469db5673395c916d215b"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.3/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1199aab4e4172b51183e8de80b28a5e4264e19d176e912a98ade0049f02082de"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

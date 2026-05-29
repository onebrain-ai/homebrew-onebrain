class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.17/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "b46b541683b8a822f99760993c122025862ef9edf3b5813b5a0594e8e05fb9ce"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.17/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "83537550f2c20e6862cfdd3206f59fbd7acf3e9bccb272f07b70257fb49be234"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.17/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4a2ff3a6401c4251d2fb8e854a4eb6d4c5ba2d2f1e76e20c88be79dc7f61df1d"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.17/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "66397dc1aaa9d7ded29da2d9ad9b77faedfb1aee8a405632a518ec7cf4634bf8"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

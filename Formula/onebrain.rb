class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.11/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "5e8ed6d83459db65e7633a7393c26ccc01dda8de3ed9ddf33df4ae577d3cec40"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.11/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "ae4f16148da5523c868940d222a9c577964dabcbf6d5e0a057a2760b96b46eb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.11/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7a4e7fa24e77b083d4e77fb771d67dfac826d46ecf1967fe04b1695041481f31"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.11/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d1d62f395f5b5bc52bcd9b0223ef3edc7493b4440d2cbb280629f4f3d7d067d1"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

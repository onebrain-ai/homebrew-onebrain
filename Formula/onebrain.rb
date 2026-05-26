class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.4/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "2098e70d62fcb2b9203ca72c0483bb44932d22e7b3de6657a6ecf696efc2caf0"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.4/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "527c4232f2ed6952e18d4c19171c2f70231407d11d63624630b63d673b0b4be2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.4/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ad9560b0577713dce94ef2fdf57feb06d1fa1ee15890217a5b7913d1711c737"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.4/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a1f3cc53924198714e70274f85bcea151fe2194bd3ae32f469e112997cd9ebac"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.6/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "0ce5fa5fe577011847d4049f1d075ef4f5faebafdb3e98385305fc4425796b0c"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.6/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "89eef5236942e92989b914d9c8a8ff979bfa658fc6cfe524a97e66a6fcf5ce9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.6/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7647a9998204f01f53cd85fe4e54983305fa0513d6d8a5918def6eabb7ba38cb"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.6/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "549c050b38529a86a1a1edea1866e672d05ba3ef515fd73dfc897ce773527895"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

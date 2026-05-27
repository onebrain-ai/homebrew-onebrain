class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.1/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "feff93cfb55f7636b3720d84d1fb4f2b869df46cf3e865edd59c75690184a7b0"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.1/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "d58186f88e79b8332812b59d379d0aeb14f580abd5bfe724648414b0c71f3ace"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.1/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bdb5cec3d8cc839f5126815200f3a42a346e050a3a68841b7ebef7ab99c4f1fe"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.1/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "441613dcb69535f515dc14452fa6e9716fdd1412a500c080dd4141c5623b6826"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

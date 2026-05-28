class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.13/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "926ea2415e2abc5cb06af6c7e22963ceecbb41ea2e52a09fab76f10b61ec4990"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.13/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "781a55fc08f5d0e56d8e9070358e09a24f910a16d798831da41a765ae73cddf4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.13/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "389316623525636e127e54d212310700c83958decbdea1a26647e346927c9160"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.13/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc2789c2c33a8a15a3986197d9282f3d7c026fd6b7d63f2abf538ab7ab643cf7"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

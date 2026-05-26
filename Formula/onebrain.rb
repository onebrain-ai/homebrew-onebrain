class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.2/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "059e1bb954578acba819b2697e1ea981cf703dfe503e68acd24f7ffecd4f61f6"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.2/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "dc0a70849c40592e1e5f245389dfa8a261ac03ff0b7436f4881e55777f251739"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.2/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f8dd1f683cc5a3b43a78310afd6df9423ffb12baf0fc5c3f75b53b9417e2388"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.2/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "35c5889ebc4ad4a535f0035d6f81c3039d09ce6c18bb6500b30a88c12012a97c"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

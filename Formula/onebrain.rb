class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.0/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "a64dbbfed34b289001f3215f00ff494dce1740a1a469ac376c78950c1f0760d9"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.0/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "07cf5710895c370aee9dee3b3a4434820649c79989f022c621d42890ded1f793"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.0/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d416eedbb192c001c6c0712970d25d7b4063d9b8ebdade223314dca00443f8be"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.0/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "659eaccd8212918e2a12631322782a6a72125c7d6df38ceee565545830a80e01"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

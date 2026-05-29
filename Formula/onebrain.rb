class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.19/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "de2fcf7ac990500552af203f77972e8585cb42ab22d7aacba08767468601e1cc"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.19/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "141f33a4c1fad9c371ab31743c2a7db9b91a4d6dd45b99d41d86f7215da4e85f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.19/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "316634a752ca3d569ade4a8f56d69649b47b057b3914fbc094116aef3038c8f1"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.19/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bb3b8d3ee64bdaa4ea8a629b062953736817a4d82ea6eb4abf5d3c150301966f"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

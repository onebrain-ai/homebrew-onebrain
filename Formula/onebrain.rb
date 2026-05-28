class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.15/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "ee3ac3e2f2e9820d5f64a6f59df7b4c9b0d1706e0422c262e32277e7a14a0e9f"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.15/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "90ec7f36c1da29403c07f72eb0c9df3add8f0baaf04df14ee6945cb8d28efddb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.15/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f0d1272073ca716c03460b438b047aa9d26736ae27de0528933a862f96f5758f"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.15/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "84264ed3b39ea596cb92da157cf2e42d89c67f2b7c3f3ee427e0f941bcba951f"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

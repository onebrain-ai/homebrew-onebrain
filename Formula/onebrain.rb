class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.16/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "b27d09b9d92ab00f602f5754c2e8a939baf05e6428dc51adb33be5aab3667901"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.16/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "06caffb484bc28cb9ccdf926a8c37cc9cd2601fc6136228a006533949bbe7b73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.16/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b61ba69729338629dd058338fec9e4a0e2c69b1afcd2fe325662f1e47076b128"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.16/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aa06c98ed9a3d71ff57afeb39d5d4e66fa4c76b1bbc6c39f1c9bb6e2ba75ca38"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

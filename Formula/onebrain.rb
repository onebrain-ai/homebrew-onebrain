class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.1/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "9b312d4b60494107a1f2a47382930097d0aa9fb5d2e9e146c03c939eecb8818b"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.1/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "9e1a1d7261c80fd686372b068ef5c80a03b44f288632863da90398d105bc6d4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.1/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "164b9d813cdb562409ae66db34c7ed115e4693fd6825c6d03ed5221e328c43e9"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.1/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "42998bf51eb18e2f91f67d5945c87c8cf389ba1cac2ceb066d3d54674681af9e"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

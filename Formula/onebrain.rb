class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.9/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "277bd288724fe75e2901c6c76506b457816040848f6311ee76e3078c6b07c182"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.9/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "dadf00a587c433405fa280bf8a18f61be65d6537de852feac688359bc3732e01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.9/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a2d973996dfb4a5b47fa517b0143a6c6ef0a6cdd7bf7671e545f29538bd9562"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.9/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "094563377a8ed579c4c22c15dc1d2cad3758cb107daab432c4b43ab782db3e70"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

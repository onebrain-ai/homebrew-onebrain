class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.5/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "9e707759bfbb1b3032001ee0a9944e2b5af4169e17020aa076df0dacc8234ee9"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.5/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "f4a75ff9498210ab95ac6176ac42601edce5c98b6943659ad308565d686e3a5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.5/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a2dfc592f79f95ccaf9b56da8a480394b95443881b193e20059df4185d4325e"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.5/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a28c59493ae407cb8cf3d775193660121f82ef43ece29bc6572f5a94cc1aaefb"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

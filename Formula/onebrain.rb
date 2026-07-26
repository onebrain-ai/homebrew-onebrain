class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.19/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "0b3a6c1b2f606d1d76e68b717bdfcae0b2a16ddb8e9ab5edfab07fff24a59d90"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.19/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "d7ded2fc9bcecf4748c05347e7906f8a67a2d4547c99b78fac26790adee0b837"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.19/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b5b4d3f879a5dc216438ff6e8a26e69ae52335416e3aca68a5fbb4a16823244"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.19/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0b999777e4efa5b9c82aee77824537f42853337391c8672860f4bb70b560208c"
    end
  end

  def install
    bin.install "onebrain"
    generate_completions_from_executable(bin/"onebrain", "completions")
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

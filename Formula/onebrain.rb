class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.22/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "47688e00cbd83708e80e4e673735a290606712c2c9744262054f69d09b77dd15"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.22/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "271d66ef29c8fa4dc88d40059db94c8fb9608f3ea7e04987907d21b430042321"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.22/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "408beab7c48eb692e7b523cacedef7b94408e2f1f9bcfbe6419d90c66fc8d2f4"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.22/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "025a3b328cfe93e73f2e8d1d3538ab29a0e7d7f239e6041c7afe9599f629e0c3"
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

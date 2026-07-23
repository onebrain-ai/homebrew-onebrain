class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.17/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "0c12ad7f378d2fbd6f7ad47acaaba5cb495da57591b5d4eac02c102c29c5372f"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.17/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "6e11b861a2949147d1fa1ec0e3786c1ffdfbbfebb5729321b7c993559bddf627"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.17/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6aa69fcf56b0a5a7e4f47cb9945a7357e9315588b990d48a4e014dbef56f05d5"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.17/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d5394b7b703e10407a80bc52ac7a85db95db78d0d012254f4629d4454d2f69d"
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

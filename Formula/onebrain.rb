class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.20/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "a6503fa1dd2fb1b1f3d37adbbe3b0579141440f5db47f2653389f157dd2c3792"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.20/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "976cdd7938f51b433e161bcfaa5adbc518877bf30a9200289dc0ea7e324ae2f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.20/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a95ffc7572e5d99ea4d30adb7284c3c9d41a1b1c6c64aac02a5c9c7a1c6dcbe4"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.20/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "188fae726dd895593c22c03c8d1c3e7c0ed8f989c4425c0c60bd0c787caf1db9"
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

class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.12/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "b0308e53a4e5e8fef96100f127524e8774625c46c3126779b4eb7af859c435c1"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.12/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "2d09f26ab099376ba99519be4466f78837d6d0f8effe8ff0b67b37da2343a9ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.12/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "88fbaa843524869828c70e0719ca80c19a840a4739a489288fee4d9a8c504467"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.12/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a14c265edb24de05dfd8de1bb5d530d1af7b721143a9bad685d00ef00f57124f"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

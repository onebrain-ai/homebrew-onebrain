class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.18/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "0c6591285b8b4aaae28ffd04f187b0f78497832452fd2a69b0d5b3a20a3227aa"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.18/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "fa36858a558bc1b93f1b3bf85930efb7fc16512ac52792835bf6d48ad849ecda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.18/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9f5f6340f2b1ff69bc24ce9c93db2fe58a396e3b3191f67879d5139b42b8b567"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.18/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d09d04181c7cd9b3808521993b68c5443fddc196b3f6e9009d63e754f6c70614"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.27/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "e32a612c5bbdf5f9167e143ac17d4bb446eb4f0c392f563c2fe336bcdaca956c"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.27/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "b6ede2c49d570c42935c887940739fc80af2e3f51ed1db938c75591b255a49fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.27/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b3209cd400c8d4cc9de28752eb67a0c1b5292046a0667bbf43bb23799c90149b"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.27/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "92ec613333907831919e412ad43c2ea34c5f1bbbfd6b630cc86d1409c5ca5e37"
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

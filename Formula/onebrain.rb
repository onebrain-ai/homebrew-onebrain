class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.11/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "daee8fc9a1e4f7d2e082e0e8a02722dcf126e8f2c72066f5fecba87ec4cf1d55"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.11/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "f362cc14759bfb5e39e59fcc736390c1c20616b1443e9cc2a13b7fa05f845f56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.11/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "349f9767fdb89fc8cd819ccceedb701e5920c490bcf27bf0a13da2d9c9bead79"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.11/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "38ea14796ef61304f0786c2a28c585b05aa05e2a81e59a0ba7ca48a6ba821b41"
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

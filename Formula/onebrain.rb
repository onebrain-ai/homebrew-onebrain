class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.19/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "ca962a933e9c91d2d4e2d85ae1be9c76a26a5ccae38ad46841cce6e393feb0e8"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.19/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "fcc4ffd55579e4ac7d211e4f9e856f145c08ad3e37ebd2ee60bd60d59077652c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.19/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a5760216854c944f86c23d6cbbc0e8a6be5374a42a80216f5f019049cea04221"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.19/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e404731a4c8e7f8f0bda341325e8fa20e8fae2b385bc31a68651661e41f0683d"
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

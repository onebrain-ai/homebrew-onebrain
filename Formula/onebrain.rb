class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.5/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "44bdc2900993e5ac8d2629cba400028b6616860451bcd7fdae83b547934d3f1a"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.5/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "9bcfa57870960d99a213786ee649bc5f427024d00f1fb5ef67e8368426cda87c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.5/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c28e92f9e4dfd904f3d75b1ca8479bb558de0a8974171865cf0565e6ea425828"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.5/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "512f35b8bb6161a7a45080bd0d52d6f984de911f91766e68ae2891bad39771f9"
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

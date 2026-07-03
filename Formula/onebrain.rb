class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.4/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "384f073fc3415054d8e4311807ce353af1da6a37d8f1b9aa465f2eda19e8434b"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.4/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "7cff5ff5d6ede2059b77228d8884e06451a6d6b3bbad7ae291e7ef07d091e03b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.4/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a07bd2c370daa2c8fa9df55610bf5f187a40e70a5a766af1b4b540b719dc3ab8"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.4/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d9cdc259d6fa5eeb748571fde73c6d1a3b163869b783b5222965a333619bdec3"
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

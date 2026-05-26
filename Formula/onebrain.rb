class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.3/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "71a348ec976ec1a6e5fa922ea69c0aaa56c798f704456d0c8187a2eedaed2c6e"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.3/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "9d3483107a2f4c38c89e7db85997098aedf3a775ec2b80177f964b41b50878a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.3/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9745497ff3fa672d4e9c8ccbe5ba0b99fa50a867b71f75db7eb0714352dd5a46"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.1.3/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db9da6e3b690fbf010f1b9987da45dc15e9e87ac1d3fe3b5eff129877310e101"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

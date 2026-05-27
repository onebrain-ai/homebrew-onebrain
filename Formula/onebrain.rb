class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.2/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "ef33966d90443d7922af14b7d508b4162abe305f31cdaebccb9c7c43ad75cd77"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.2/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "905bc20434c25295a192555073c3a5424b7c02e58bc34a7b5fe2549f9140a593"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.2/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ecf53f058733b20f7cb6d14c6b2cda0f77ff9473d979442dae2f652b14c4a6e4"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.2/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f0e0e10fa6069c0af0d1edd4a9dd8e37ddbe38c0e4df3aa1b4fa50d098f41f93"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

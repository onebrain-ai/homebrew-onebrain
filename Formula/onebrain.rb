class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.16/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "a9b7c248e748a8749935497c816487c8f33446a73a47fce0ca23324768024e3b"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.16/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "a4401ad9b451abaada3cb5c9ae452066505c8e728ae5d09b0b62b2f4bc6eb789"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.16/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "15bfbdd396f17db83ad784a9cc5533a20c7ad1e9c05a91e18d6ddd3f5c30f734"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.16/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3af8cc1a1a4b7b2349f719f1aa4add063b2cc56c284a35c3bc66bf15d17cb431"
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

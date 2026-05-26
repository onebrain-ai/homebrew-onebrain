class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.0/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "759c749bafcb0896b64b80f17346020f0ad030da633e34e7c3a03b27ed3c5edd"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.0/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "f939c0abddce200542597096e46de2d08b467a7a62a1c0eec9aab214f02004ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.0/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a68701313aeb3157a7b3f713558beb188e87d7467bc6e4b0dd43450d102d3250"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.0/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "06892ef3808e21ca44a3f3fd774b2b6491af288854246355e19108d4f609d231"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

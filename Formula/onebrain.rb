class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.8/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "6cebc902684bf095da92435c46041214a1ca3d9a3ccdd736fcfa2af2db03e5c8"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.8/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "b3bb584d29acebaaa3b66c9afc117447ee9355ad0cb69b1de101c1be0e7e40c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.8/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1f1136f319a5018ba223daab1c07b9b78b72efb3d0af2f0e3e4147af0750e7e4"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.8/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8d68189db6ea49e1a36ac49d0a1d50d6a641353378f9c43cf90ff28ae6285225"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

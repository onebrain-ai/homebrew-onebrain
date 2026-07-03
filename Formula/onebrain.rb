class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.2/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "a18ea13b4f9e63295f5553265a066548ab0173f04565b95862362df40136b152"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.2/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "4874744fcf2d30dab66cc3196be84a036db579b9d5aab4faee531e5ab4d54c41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.2/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "243fc0c83693fbc9b069659d3e5489bd308fc4c58d69cf426aaba201f6aa8f9e"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.2/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c9f3fe7f82a9c28b5b9fdbd3e3a2dfef6d52ed24a525390668b00ed1ecc341bf"
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

class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.24/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "49ed5944d50968c888decef76e49a511e9ea7e4a8253488c0d625fef8e927c60"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.24/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "b21c2830e8c4af2006c8059df8e7aed83593aa35560779493ae0bb80a843275e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.24/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "58f4db208a81662fe0c22005cb16bf4b8d4e317ca8a0349a4023d00a4e035e37"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.24/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8d1aa6ccfc63cbdb053f151e64eac9397a18a2f143b458153bec942f585c6cf2"
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

class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.23/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "5be3974c112559c008c5e492c72cac1b00b4a8a0d7532fd219251eba3577b229"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.23/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "1fce114a8ce6a9527840df7427c8dd04fa779c5d8192acdc404a0d2244c2b1f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.23/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "554604ffdb54d24d2e0f52105eb39f193f4b3745ace39a76c55bd36315a174bc"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.23/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fb5093eba67d4fc7488ccbd0dd9114f231b4681822461d73f5f6f37eb7da6316"
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

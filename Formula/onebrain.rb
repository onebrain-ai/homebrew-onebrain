class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.26/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "78943474434b64751bbf45a8b6edb71696f43df5161474cc32db760463b56fd5"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.26/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "2f55aa6add1316d75b60a8448d9d5a987a088e9da669fbabca53d1af7f872221"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.26/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "635c66f9a24dddfdfb19b104b5feb0ff9b4554fb3034aede1fed2b80860c15de"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.26/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4e84743ec23668aff4195512e87ff6a975f90572a2de1e08b1f53f21835e36f7"
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

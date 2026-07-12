class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.12/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "dfd218f23df4e597bebe52edc91e9b30a4f97faabdc47edda898aa546db03394"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.12/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "49e372d2572a9c8ac46af63ec5aae1e1f41e1de369c7a6ee006ad910bb7e2a36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.12/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dafa7488824c7c2908030463b9b30534de86e7aaeab029ad7b59094a35a4b3b1"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.12/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ee67bd308d31b25bf0f009badf5e324bd5e0839eb87b322e65383ab2bf2c4ac5"
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

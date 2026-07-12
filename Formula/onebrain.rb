class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.11/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "4ad914545e73f4ccb0836d47b70f00e7a6d507f45581ca566a291a38f124ed53"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.11/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "0464896817514131372e576eccb848682a69e0fed91cdc0ba7877fc020f85371"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.11/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "005223224802f84c3a01584a3750c10a11d0756a6c0933912f39d2f3901fb263"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.11/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd690fe9ce5101a8c009167cd36f91e014822bc9b6dcd74bb425cb4f006f6a51"
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

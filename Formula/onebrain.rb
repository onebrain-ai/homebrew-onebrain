class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.4/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "3c88b10ca6af9a3039dcfd41ce93c97b877977fb72f1637e00e2ec6937d01dfc"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.4/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "5d01b16c2630d9efa5d9e2e16710f92e29e6e565d73a8a27b49ba89c231cdccb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.4/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9d8552e2727535c67bc73614e580e103a61f8720581a39ec5c4d9ff764f3e182"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.4/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ab6881d48fc0fd2b8e2c43f3a380534f21b820b8c6429db942e85cc90a3e8004"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

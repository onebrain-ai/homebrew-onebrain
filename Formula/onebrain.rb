class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.7/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "776ca18cf18bedd79dc9ff9663943244c5e0cbeaf29198197833c47b9c1572d0"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.7/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "18f3c4fefa872b81139014d92f0312fac85c5936743163be902070e3be0a8972"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.7/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "225410c4c474167070e51e79df2600ea3a40aafaa0fff25a208c92567fdaae48"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.7/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d4fc03eae45fa81256830656b2161f67350abf1775d6f24fddbf9abecf7484ed"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

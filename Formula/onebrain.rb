class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.6/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "65cdca94b980a7577d309260061cd31dd1cdde4668150dbb1714a474746ec7ec"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.6/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "9fe12f4d338956b1b0961aa029af59b2ac2093b6e74ae009e0a4b082576e6d60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.6/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c71be3bd8816357e150a80d3d5a4fdb9d961084b5091a4200661dfc4e16e11f6"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.6/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "647439a52e81a456a8333a6452ac786fae9b8b1a0a18ca13199c4478291d73b8"
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

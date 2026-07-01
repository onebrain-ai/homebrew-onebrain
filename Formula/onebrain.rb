class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.22/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "73e1341ad8bbbafc28cc88e193f5c911ef8ceff609f5a075e53dbd8b6b881afc"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.22/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "90c79519feb8705c3c8366685e754c8d6b6650bfb4dc46ad92aa92e43d100644"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.22/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "de0b03e07a4fc97f250a6af8dfb19f4cb234c477413459be96b8188b5374ef24"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.22/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d7c7d6dbf081936e2cb14b5d3b9c29a89881e0c266c3fd02d77f3f5cb5114a9d"
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

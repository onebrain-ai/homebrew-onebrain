class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.8/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "60f10c4e0481baa319d7c8a52b4f40bd349fe3bf0c459341df425e6d59623105"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.8/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "e60067dde962882bfdcbb86f1ad1c6ef34e7315674b560f34ecad88856654372"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.8/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "afa6153d18810d47491441a9335b28b720beb81d97ae81edaae52643f54a58b5"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.8/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "97ba171ca9a1ab3f8ae4e3a24b56df04eac1f060a11ba7815f70d72c1e95b5fa"
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

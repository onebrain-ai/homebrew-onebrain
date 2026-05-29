class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.21/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "79df7ea1ed45939559cd925c72dbaf22ffce0eeb5e00affeaa2830e107612c4d"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.21/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "77c90b9e52bd17c4af25c545e613140c25d9304d1fe7f9f301809e1d549517e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.21/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b189dbe8c37a81dd7651e2831a11354144cea838d6096dd063af2897737e6e81"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.21/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8401790bf83f2ee728b2ab03a19f4726741d2cf5f98813c1fe1bfc654475a05b"
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

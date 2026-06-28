class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.10/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "12aac745c69cf21ee5a5d5e45c51f7a42d9536a12d2a8e26577335646f0121e0"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.10/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "76d7ba03a88bd851a43160e05f5e00f8f745d7708d4be1e9be74484b003d3148"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.10/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "82a75a5c09f02b38e85847ca81d5976fce1b8376e1ac1617f09e43fe8efc56e2"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.10/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4f5a314e3027007bb13d11d360bc8ecaf4e4db3e2ae6c9c8a7cde6cfdc76250e"
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

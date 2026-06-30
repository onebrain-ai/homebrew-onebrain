class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.15/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "58d410f30e475f6feb00338f22b200521c5e2e96f2c5d9c0f831777a34588e6d"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.15/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "12cf0fdd7950aaf783e5aaa23f7945a2b07c4724c05fe17a77ca327ea3845b82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.15/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2fc4751a30abc5ebd61eca8dc841e48702712382e0e03ad4ce169c8039ce4216"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.15/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac7062d5cfa240f5c1a266b8d85b0b24029dd7d4fa005a8fa7043e50337dfcf0"
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

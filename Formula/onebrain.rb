class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.25/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "a63e4950827e2a4b59ca5a3f0eeb659779b956afbac288123263837b1abc1f65"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.25/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "3ea0a6a3ba3b35c924f3c578e8b5c8c519dc92332bdae4bd34b355c2645ee3b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.25/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c7a4a2fc3cd86543c44baa45be42c46e7bb27b4911a606a34cdd1a017ae293b6"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.25/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf5cb517a15147027e0542f95e4f85ca7723d22a821349678ba146ea5cfd4545"
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

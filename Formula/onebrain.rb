class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.5.1/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "740cd89f0df1c4b50a9b69a6a6a584c84c60cc7c093f7fad74bc35eee4f1b2a3"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.5.1/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "1043420afb3cc23f1b0b391dd2337b5a244926994ff4f0f655e29fa620aa9a8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.5.1/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d761d24078d5c2424c71ac8a6a6491c7d2e4a09c277f3687a5eacf356641119"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.5.1/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d3121676b9ed5bd1fa5698f774262c5197cfbd830520869778694b9286cf334f"
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

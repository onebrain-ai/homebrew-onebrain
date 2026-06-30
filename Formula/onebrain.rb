class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.21/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "9ce007b24d45e4fe460c9fcc9b4e3e33d01f6f65250d214447e38fe93749e86f"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.21/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "c5aaffd3a8004c035ff85ec3bd73742f9cc53727050a365a7f5fe9e2405b1f25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.21/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c2f64636babf3687265bae666979959e18549ef48e0777828215832c3e9287c1"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.21/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac28a2d56e065b7fa4bf542e1ddb1f9453c3dca4709f534cfdebfa5019f0de6e"
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

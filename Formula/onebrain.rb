class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.9/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "21d63a3814114f1a9fcd040edf2b24eb9189583188e858dbd3ce36d84493e88f"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.9/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "520a503548bec51919751d79ef1b61db77f75ad3aa1564ddb1ac3e9a01a03c42"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.9/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a3cd57adb2bba15631138a650c14e20d7bba231a3bef344a63a33f70e8b687c5"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.9/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e93b7515caf8e443e07f02495606396a2b4898d47b392a771cad1e96c39877ee"
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

class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.20/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "048f88aec07628469f83411afa335e6210ab825b32b62c761f70a1972fde4451"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.20/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "5c524c6c6b7fb7d85918b62ae122ee33f8106e876464b8639e099c1589d27caf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.20/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "16505fe5c6efbcb3a0b31e8b05c20411bdf8872267c268f888a8ec03620efddd"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.20/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "676cea4755add8b9f3d6f3365098435f5945c73e22fa416384a7e5a58783380e"
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

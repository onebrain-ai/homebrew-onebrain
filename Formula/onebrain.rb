class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.14/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "924ca91aa7c1e0217f7cc06def8ba085ba4586dfefd04ca2c47dfeb47d637e6f"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.14/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "193ce2d7624696cdd5e587fa8a2678590310d413894d775d3a50908a415d1120"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.14/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a2c54a90957a835ef67f0975b09f2c53d8239154238f4f5c019fd04a331b9aa9"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.14/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c668fe85ba79a88e2bfee43edb200788dfe279e93007ea24f32c561c78d52c30"
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

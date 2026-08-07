class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.24/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "34cd8d26c8b2a6d6559dc707abfc2bea51398b6a7a94d3b3561ef541797816a3"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.24/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "1a6fd16425a1a819bfb0af62e005f16a3dacccdfbf16f45aa7e23418efc4fffd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.24/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9b40b45ca0d503f049703b5a714f9fd83f8e903437603773a27780252702182"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.24/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5f090e803107d4a36510d9d30d73c004aacbb2e96a0bffef44bfb96c949cd0c2"
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

class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.1/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "f5a4bbfc23f1f00c66e2f783515755464723d55a8f75146ff533356f70a0c48f"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.1/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "daa2a53ef4c7b918fe8dd028ea4104bb4a671ba0939873b702d792c7343d1832"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.1/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c5f194baddbd51597ce12c7a13b56645614baba1bb097fd11b939697ad966302"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.1/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e4c47503503f9a3b3c8aa95e493bb7966f21a5238f092db772cfb2636914b44a"
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

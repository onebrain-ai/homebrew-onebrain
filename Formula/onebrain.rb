class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.23/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "45a82c34792323d89a2f7be33aff745503ae86a01fa18bf3b1ff5c1c8b686f41"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.23/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "a4e9dd39c4dcc7f9324ba49085d4d7e231497082a5ae092d1730c4848fceec9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.23/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "14ccaa988de08da9abb94536a87f2448812970e2f5b9bfd1e7f7c8898d39700b"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.23/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "50697695928d0f83ffdede64168d2b6263be1d137ee5a14e51640dc7fcc528f9"
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

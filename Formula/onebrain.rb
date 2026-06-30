class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.20/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "d7af89e29b06309a1572cfe74f4449bd5b0a6d6295cce1dad2443035602372d1"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.20/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "8870ba735123b515924a3ae7d3656b40ee571174393a213d00327f6f8918e224"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.20/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cad811f9ba18d0c20bbb6604e0d6f31eb4ba3385740761fea28627ca22765751"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.20/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a837327e6b914fa3ea163490a1f7f1007dce6e1f39deb822bd6391026d4e0245"
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

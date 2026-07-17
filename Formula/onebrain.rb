class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.13/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "b712bdb27c09f52a682fec4a3551506e02b63c82615e852a7821af378e8e1871"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.13/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "27d5bfe7a46b37e07051e53937b583cbe42d38ef1185ad5de421951df0090ccb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.13/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e478865609693bbc479ab373bf626c0f426dbbea5c44ca866201b9294b9e7453"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.13/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "47e333b47128421bd148df142c4fa332f97a35f5ea7c0bff714a23f0808cb8e3"
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

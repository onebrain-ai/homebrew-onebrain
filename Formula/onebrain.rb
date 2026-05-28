class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.10/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "02a34f6eca28b21eb72da0a45210b2f4b9d693f967f64b3c07b3c4cd39add54f"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.10/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "c7656df6a83d107d48ee65dd727e125846af23d644abd80c8bdc9176e80d83cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.10/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f18e2780018a70d2c18c8aa920746387e78114e92668dc84fc4fda98e8a927ba"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.2.10/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d9d75af8f5f1eb188819fdc9b18f4c7ae23ecfc70f41fba2bf5fe67f8a894cf4"
    end
  end

  def install
    bin.install "onebrain"
  end

  test do
    assert_match "onebrain #{version}", shell_output("#{bin}/onebrain --version")
  end
end

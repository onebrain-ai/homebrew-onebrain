class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.21/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "ff1c7bd7c8ce4f0979f4886326c0c0755c95f9a6e290f6109ec4ccf38afbb79d"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.21/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "69b4330702267ae942d88acb73b810728f03e844e382094b67d0f5733d22d31a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.21/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f60a9e2a4f0b1e8880780de0bc6c693919201b0c7714735584354ee573f3cc29"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.21/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "027f5aaf01f66536ae47715a416cda70762871eaf1631c7ed2c9aefe2b08fad0"
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

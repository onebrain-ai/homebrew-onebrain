class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.3/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "97494e38cf61f5a18481e7eca796ea369cef72a30321d0784cf70005219affc8"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.3/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "f23418e6e7c62476bc1211d4150717443f947aaead695e0d3e16a7227ddc2435"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.3/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "80a103242e349b4c16143418107e6b50f3807604eb266046a7e657773f208ebf"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.3/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ca7414aed7831928619cc7565e974f81ff81ed28ba4a1fc1b13410b9c91591a"
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

class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.0/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "c12b335faa20bbf65d3d8660c3f30ea3bbf1f341c8f7dbb8866ce70b3e39a593"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.0/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "cd8ab784d4d2950bbd13bea3838651802f46008aa5e004664e0346aca7dd561a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.0/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "51a367743ff5b1daf25fa016ec2d45f212a28a748ca840bf7ac274520d041a7b"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.0/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2bcdfdd024fb730462b093b49267eb167af3327e14cbef8ec4a19f6f2dede281"
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

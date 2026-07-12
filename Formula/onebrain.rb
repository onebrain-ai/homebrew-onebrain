class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.10/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "fabc650290e58ef009880042103a1f91122964cfc632be7bec91b3894bb9ff51"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.10/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "97eb9cc0efee063924587e302383d60f7782a4a47396ac83bf7bbd650476cb24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.10/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fb3389fea36448a8aad8dd5d0c70f2885ec47deb24079ab56047e185a6e1dd66"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.10/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f40389acbabdbd50a240467630f04260d521ee5ce32afb03b9b7b617afc81e32"
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

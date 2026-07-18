class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.15/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "34a210ec156406c1fa38ae0a77b93c3e4cb11491cf11abc4a875059e8aa2587d"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.15/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "04ce689016f8cc9b13e10c68e49ecde29a8bcaf14163f039a8c7d2b5f04abe5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.15/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "29eca38b690273678594ef8fb6b4fbc39be19274965a007482c40b46777c3cce"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.15/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8295ac96e3d1de6cbb40abe2386ed21001af9c7e1223c9cd47aa74d9592f58c2"
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

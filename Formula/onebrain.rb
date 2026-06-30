class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.18/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "5c313833715493e2ecfc150e5c8da565eb1b951b8e39001841380de571817ecd"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.18/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "58c443fab84b0b5bdd34203cb78e4ce7000f5d9c415d8f12b375522612ea5a43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.18/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eeb9cd3d18116f969aaf2a12da7e8dbb558da340dff65d49fd8d845343fd42b3"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.18/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37dc4e03cf2e9d116792392056af8857df0d560f2819f6b8c3717b0d6985ea2f"
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

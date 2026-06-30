class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.14/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "1352e84ffdea6452061668d8c3f05b57e073bd3ca7c84e16843753086832a0e3"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.14/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "e76117ec84e389394380db971c17330d6a90a4cf8fd0e582b4b5bc2d9cbccb70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.14/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f89ad0a7cb571632d2bbbcbeef9816496d5e56dea2df27cc74963215a1648eea"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.14/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f758e0b5b83d3ba431c19c836de1fc0c12b6774291dd2588c515c33ae51fa671"
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

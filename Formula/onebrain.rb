class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.13/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "d685cd41d6d244701710cc8f80f8abf9559d6675105b2564c65332438511a981"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.13/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "56fae803fd3b8d6467035a8e1306c387d086545d5e26cfa38763ca89fe579fe8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.13/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "81a8c3e4d5a75aaca51b86f54f872f800a3291a71787b169044fd8c2d271f29d"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.13/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64f1cc7dd891c8a1fd5aaa78b243a739c6545144f8cb54cce5a2cb2dbcef7fab"
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

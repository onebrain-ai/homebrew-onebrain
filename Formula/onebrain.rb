class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.5.0/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "4a5b8ede0926e139904acd48ee34ede008c62f857119fe5916dfab7a385b2692"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.5.0/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "5bcdeab82d025b3ab783e08e7a19f374a9120754cafadace31517173eec2fb9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.5.0/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5194258c5fb4d16e0774bf4942a70bf7c3f2dbf154ec560b6a8a32f77c182ac0"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.5.0/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d2e5a3df54e16ca87e37b7f3c74e263e4ec8042c7aa8601a471b39960d5bc8a"
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

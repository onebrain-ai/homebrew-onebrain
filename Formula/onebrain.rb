class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.17/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "a0785e96d43baab39f1c48a85af10316707bd2e46576d79b0a70f5a4c59c7174"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.17/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "b3afe96caeeff27a784bd5fdc12dba4dbf1f5398fd5e0ea017988de785d341cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.17/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e1bc8bf41e877d9da33be5d450d6c75d59f13131f1c817655b1390c136ac7302"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.17/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c31d8d509b4cbdcf1e3309d081822dfc061830ea8ff75c43929578f23946273a"
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

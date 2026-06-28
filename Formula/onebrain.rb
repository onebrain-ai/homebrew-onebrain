class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.12/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "eb46e8956b5b23452030ef31fd218a1fe8cc1231a099f58dbab75cc71e60f26f"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.12/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "9471112799ed138c9b682e24563c90d22570e0c743618320bb1a7262cdb3366d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.12/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ff22091057a675ea3977475d175ffc520522d6045d676b6cd649892d31bd522a"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.3.12/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "199a9266f45c382c5b5054851cc66be543e54b9c7244f61082d1ef6ca5129918"
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

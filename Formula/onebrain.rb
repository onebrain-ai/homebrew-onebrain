class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.7/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "9b0c3681572af82127c5933a88ac93f5f2cbe9de4b4cb28e6b828c636b344127"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.7/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "047386911832688e79b2944f383179e83248c0ea1a4d7a880f1a4c512fc44dad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.7/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0f9c1c60e685fa02755abcb65d1e8a145145c77d6e85959fb444f1ea398e7ec0"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.7/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "625a0b3f5fcb9df50f24fda6282261a85b5f62886ce10c83c48cdbe806cb0d92"
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

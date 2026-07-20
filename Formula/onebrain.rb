class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.16/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "ce3f3683860eed8e2f1277872302ba26249ad38466b6d76abc6cc320b99547ee"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.16/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "22474e79cbf914d63e1de5b6d68cae5f4e28fe8f4bcbb17a76c8124af605dfa3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.16/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4545deb7c56d520682c5e0984f21bfe28e169406690f3541d588e6665914bb0e"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.16/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1f0622451228571df475e797363e86324a9516734f37950e7f43e12208198775"
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

class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.25/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "22972ee356fe2900f474cf2fb03647b744559ba9d47797091c1d318e10614a97"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.25/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "612aa401e88bae0fc3f59a22b4954297685bcbb25b1cc2f74d0388d8759ad0c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.25/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "106bbc0b458758e382ab55070fd09b03c3e0b9d507328f4d66a8cbe0c8f3bd09"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.25/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "13713305f8f8f9c808f20d41ad2219b5dc2bd5298865cdb1577cb3bba8e9e29c"
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

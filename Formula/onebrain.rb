class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.9/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "26fcf4bf346506d7e1c67520fd7156ef76fe3ecd1dc26317a0bef0f227990147"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.9/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "fa8713ae821725d27a943f96af4e43b1f05c164caec88c053ff1295b9b1997f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.9/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "27499ae17267d7e8471b8ae1dbb27d16ffe076049134a0191a746907012b5ef2"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.9/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e82ba0e1c185a003ea96dc87141a65dddf2a0f3e2c8d287698a15553c6b2eec"
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

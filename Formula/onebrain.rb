class Onebrain < Formula
  desc "Local-first Rust CLI for OneBrain — personal AI OS for Obsidian"
  homepage "https://onebrain.run"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.18/onebrain-aarch64-apple-darwin.tar.gz"
      sha256 "a1f54dd99f0b7e409e85fe4f423e1d68af5c73e4d3460a5d30a3109e2d7e07f1"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.18/onebrain-x86_64-apple-darwin.tar.gz"
      sha256 "33795f63c7a47d6b8b627f62b17a65955c8d37387ca2aa1460a60b61edf5bd97"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.18/onebrain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f6a6266f572fbe8c31f3e34041f040e1572259a338aecb40221f9201fdf561b1"
    end
    on_intel do
      url "https://github.com/onebrain-ai/onebrain-cli/releases/download/v3.4.18/onebrain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc0279dff54b8e087c01a68339bec49998028f3ed94fb5455c4d2e9963a1fc31"
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

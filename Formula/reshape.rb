class Reshape < Formula
  desc "Convert tabular records between JSON, JSONL and CSV"
  homepage "https://github.com/pmuston/homebrew-reshape"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-reshape/releases/download/v0.1.0/reshape-v0.1.0-darwin-arm64.tar.gz"
      sha256 "141a33760a351e4b643bb5a6a62eb1cd6990fa8a9b8a3c161e16200a3d8c97ee"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-reshape/releases/download/v0.1.0/reshape-v0.1.0-darwin-amd64.tar.gz"
      sha256 "abd69dcdc361f8d2634e65b29baecccb4c87c08354abecf3c40f0b3f0299124d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-reshape/releases/download/v0.1.0/reshape-v0.1.0-linux-arm64.tar.gz"
      sha256 "9d2bedb44bc3dff64c259de3b747aa5619dafbab5d64c08916b28dfb3fc14eb4"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-reshape/releases/download/v0.1.0/reshape-v0.1.0-linux-amd64.tar.gz"
      sha256 "214c78d4153f16becc15e389f8b8b9526457903605fa26c8662552abc00c97ca"
    end
  end

  def install
    bin.install "reshape"
  end

  test do
    assert_match "reshape v", shell_output("#{bin}/reshape version")
  end
end

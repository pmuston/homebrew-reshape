class ReshapeCli < Formula
  desc "Convert tabular records between JSON, JSONL and CSV"
  homepage "https://github.com/pmuston/homebrew-reshape"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-reshape/releases/download/v0.1.1/reshape-cli-v0.1.1-darwin-arm64.tar.gz"
      sha256 "cd52ea7d4665c5393c7f0b1d07c563216610102f26a69c3f422b5da426878c33"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-reshape/releases/download/v0.1.1/reshape-cli-v0.1.1-darwin-amd64.tar.gz"
      sha256 "800910d9208815570491571323bcfba80d55dc655d5a24aec7eb9b773f65c221"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-reshape/releases/download/v0.1.1/reshape-cli-v0.1.1-linux-arm64.tar.gz"
      sha256 "a0e99e84c19aa6f46525a24504225a96efd755773f7f30b96e1e0ffe9d497d56"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-reshape/releases/download/v0.1.1/reshape-cli-v0.1.1-linux-amd64.tar.gz"
      sha256 "f1d86d2c412f4b49e891e5d06a8d3e7ff5f39ac9114ca9588feadf68409e97ef"
    end
  end

  def install
    bin.install "reshape-cli"
  end

  test do
    assert_match "reshape-cli v", shell_output("#{bin}/reshape-cli version")
  end
end

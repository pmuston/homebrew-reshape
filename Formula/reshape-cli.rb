class ReshapeCli < Formula
  desc "Convert tabular records between JSON, JSONL and CSV"
  homepage "https://github.com/pmuston/homebrew-reshape"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-reshape/releases/download/v0.1.2/reshape-cli-v0.1.2-darwin-arm64.tar.gz"
      sha256 "298d01f109146bf5e0c6bfd9585322028171be7e0b77a04cae34905c9e34fd9e"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-reshape/releases/download/v0.1.2/reshape-cli-v0.1.2-darwin-amd64.tar.gz"
      sha256 "05f499be942727cb586f2fc66c782fde6728d30c1a90cc96e1c83977ad435c7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-reshape/releases/download/v0.1.2/reshape-cli-v0.1.2-linux-arm64.tar.gz"
      sha256 "f25b95fd869ce11044870a608530c4052634cf535923c1f638a425efc483d073"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-reshape/releases/download/v0.1.2/reshape-cli-v0.1.2-linux-amd64.tar.gz"
      sha256 "9b974d00bcd3bdfb5bccdf6225ec504ee03b6792e8522acc58d587f38962a4f6"
    end
  end

  def install
    bin.install "reshape-cli"
    man1.install "reshape-cli.1"
  end

  test do
    assert_match "reshape-cli v", shell_output("#{bin}/reshape-cli version")
  end
end

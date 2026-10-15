class Mochify < Formula
  desc "CLI and MCP server for AI-powered image optimization via mochify.app"
  homepage "https://mochify.app"
  version "1.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.8.0/mochify-macos-arm64"
      sha256 "e37c474791f318ed2ad7ddc28344ae0c73bafcf2fe35c080ef7a69a6f895f0c3"
    end
    on_intel do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.8.0/mochify-macos-x86_64"
      sha256 "0b3b2c96619344578aa2e4e88274a5414a7eaab738696030a5417da9cc4579e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.8.0/mochify-linux-arm64"
      sha256 "cc34264305ddf811be5d6b429e7f1fde33c893942f9bdce41335c03000452b52"
    end
    on_intel do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.8.0/mochify-linux-x86_64"
      sha256 "55368a7df068729624982a9cb4e18ff5d00af67e5b2f33b1c72ae6f9b046de17"
    end
  end

  def install
    bin.install stable.url.split("/").last => "mochify"
  end

  test do
    assert_match "mochify", shell_output("#{bin}/mochify --help")
  end
end

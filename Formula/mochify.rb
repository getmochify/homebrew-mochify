class Mochify < Formula
  desc "CLI and MCP server for AI-powered image optimization via mochify.app"
  homepage "https://mochify.app"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.1.1/mochify-macos-arm64"
      sha256 "c11da571ff35dfe503d60d94fb0117665b3a6d1a07fc2f2e28bee430be2ea27c"
    end
  end

  def install
    bin.install stable.url.split("/").last => "mochify"
  end

  test do
    assert_match "mochify", shell_output("#{bin}/mochify --version")
  end
end

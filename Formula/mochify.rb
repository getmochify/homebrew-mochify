class Mochify < Formula
  desc "CLI and MCP server for AI-powered image optimization via mochify.app"
  homepage "https://mochify.app"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.2.0/mochify-macos-arm64"
      sha256 "a4f78ddf689ae374fef0b003ed5b2a89861d507c7601d5858b25e22dafcdaf25"
    end
  end

  def install
    bin.install stable.url.split("/").last => "mochify"
  end

  test do
    assert_match "mochify", shell_output("#{bin}/mochify --version")
  end
end

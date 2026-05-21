class Mochify < Formula
  desc "CLI and MCP server for AI-powered image optimization via mochify.app"
  homepage "https://mochify.app"
  version "1.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.0.5/mochify-macos-arm64"
      sha256 "c15ddd763f902807c91ab3636ee6ac6a81a327f7baaea2675d4735ffaa3aae13"
    end
  end

  def install
    bin.install stable.url.split("/").last => "mochify"
  end

  test do
    assert_match "mochify", shell_output("#{bin}/mochify --version")
  end
end

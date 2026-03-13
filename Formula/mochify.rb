class Mochify < Formula
  desc "CLI and MCP server for AI-powered image optimization via mochify.xyz"
  homepage "https://mochify.xyz"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getmochify/mochify-cli/releases/download/v0.2.4/mochify-macos-arm64"
      sha256 "f4ab3cf73239b7ccbce4d031d9a8fcb803bb88b77dc06a52dfe00345ba635d93"
    end
  end

  def install
    bin.install stable.url.split("/").last => "mochify"
  end

  test do
    assert_match "mochify", shell_output("#{bin}/mochify --version")
  end
end

class Mochify < Formula
  desc "CLI and MCP server for AI-powered image optimization via mochify.app"
  homepage "https://mochify.app"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.4.0/mochify-macos-arm64"
      sha256 "dfab2d6d7a0a869218453001dd7187e524cf2802c6f85b3d89363d195151478d"
    end
  end

  def install
    bin.install stable.url.split("/").last => "mochify"
  end

  test do
    assert_match "mochify", shell_output("#{bin}/mochify --version")
  end
end

class Mochify < Formula
  desc "CLI and MCP server for AI-powered image optimization via mochify.app"
  homepage "https://mochify.app"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.5.0/mochify-macos-arm64"
      sha256 "sha256:482bbd882469c3bfdd14277f23ed5c5d6ac33d156938fdaff7bfe3482355c2b8"
    end
  end

  def install
    bin.install stable.url.split("/").last => "mochify"
  end

  test do
    assert_match "mochify", shell_output("#{bin}/mochify --version")
  end
end

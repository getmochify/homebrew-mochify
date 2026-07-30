class Mochify < Formula
  desc "CLI and MCP server for AI-powered image optimization via mochify.app"
  homepage "https://mochify.app"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.5.0/mochify-macos-arm64"
      sha256 "482bbd882469c3bfdd14277f23ed5c5d6ac33d156938fdaff7bfe3482355c2b8"
    end
    on_intel do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.5.0/mochify-macos-x86_64"
      sha256 "f71dcb643f60d9d7252ed95aae923622e9b01538eeb4727f09565e0137046d34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.5.0/mochify-linux-arm64"
      sha256 "4d5e7734e382c4a498dcef4831289427a5d008e754e4ed54710a4044c4fb79ca"
    end
    on_intel do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.5.0/mochify-linux-x86_64"
      sha256 "9f5d6842d72749c7240df9a89543f6183936d1fdb3b087b24c0dc006ffb39839"
    end
  end

  def install
    bin.install stable.url.split("/").last => "mochify"
  end

  test do
    assert_match "mochify", shell_output("#{bin}/mochify --version")
  end
end

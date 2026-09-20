class Mochify < Formula
  desc "CLI and MCP server for AI-powered image optimization via mochify.app"
  homepage "https://mochify.app"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.6.0/mochify-macos-arm64"
      sha256 "2ffcdcc2331a10300b8434468d982907e33915d1deb1bb47a357c1aa50dd92b8"
    end
    on_intel do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.6.0/mochify-macos-x86_64"
      sha256 "e4ed5d97656ecc9b5a9cbd12695a8b6d36fc5a93f99d0054017f7a28bef418c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.6.0/mochify-linux-arm64"
      sha256 "de7a17688331afd1ca0e447033c3021ac1889f0d66e0f2678761e4b73aa3ca50"
    end
    on_intel do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.6.0/mochify-linux-x86_64"
      sha256 "e8e6d2c871c1b736a7b927bb8a3623ef1026752f81b7fc9c5c798437f4aaa8d3"
    end
  end

  def install
    bin.install stable.url.split("/").last => "mochify"
  end

  test do
    assert_match "mochify", shell_output("#{bin}/mochify --version")
  end
end

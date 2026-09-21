class Mochify < Formula
  desc "CLI and MCP server for AI-powered image optimization via mochify.app"
  homepage "https://mochify.app"
  version "1.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.6.2/mochify-macos-arm64"
      sha256 "310667ae2c6148a6e425533d6d91f3091f7c7434600edcdc2d9ee83d7bafa723"
    end
    on_intel do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.6.2/mochify-macos-x86_64"
      sha256 "d50115f02c3238b5ee3fd62adedf1f518783240c55f33c82bb7f534177849055"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.6.2/mochify-linux-arm64"
      sha256 "1b526ec876102ac1ded71d4d47f496355c7c97686eeca7ad61f35e1e701bfa60"
    end
    on_intel do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.6.2/mochify-linux-x86_64"
      sha256 "ce37d0acfb2780120b971a5d2dbc650fd2f159734a74c6e22fb9d6d6de334b0b"
    end
  end

  def install
    bin.install stable.url.split("/").last => "mochify"
  end

  test do
    assert_match "mochify", shell_output("#{bin}/mochify --help")
  end
end

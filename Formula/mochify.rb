class Mochify < Formula
  desc "CLI and MCP server for AI-powered image optimization via mochify.app"
  homepage "https://mochify.app"
  version "1.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.6.1/mochify-macos-arm64"
      sha256 "583351c2e7499f51fce4289e032975839e3baf6048554023f15f7d03f9f73657"
    end
    on_intel do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.6.1/mochify-macos-x86_64"
      sha256 "ccbd90e2b9db074bab4673337fed93e4fce7aa70370c08b3e79fd164f71102f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.6.1/mochify-linux-arm64"
      sha256 "dde4106b61e764029ae992bb686a4ef056dbdb96d58cf96fa1abc615c4146280"
    end
    on_intel do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.6.1/mochify-linux-x86_64"
      sha256 "693b26ac392f88acdd03a7ad83da96a4a5704e856f09ff579235493a456a384e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "mochify"
  end

  test do
    assert_match "mochify", shell_output("#{bin}/mochify --version")
  end
end

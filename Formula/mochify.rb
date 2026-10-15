class Mochify < Formula
  desc "CLI and MCP server for AI-powered image optimization via mochify.app"
  homepage "https://mochify.app"
  version "1.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.9.0/mochify-macos-arm64"
      sha256 "96b644577de77bf6402f36413422c7d881c5ba5f5766c6ffcd98fb393c940e51"
    end
    on_intel do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.9.0/mochify-macos-x86_64"
      sha256 "0b52648a5bc3f74f99157f8299fbb9c92b2f38f633b92c11d42ce2864ce86072"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.9.0/mochify-linux-arm64"
      sha256 "26442d444e1b7251bc3c450d63529bce2cb00e86e45ffda4cf7e1238eabb91df"
    end
    on_intel do
      url "https://github.com/getmochify/mochify-cli/releases/download/v1.9.0/mochify-linux-x86_64"
      sha256 "0e755d330124b71c25a70a2d2678908ccb7cdc224eff97f0ce0de577f440442b"
    end
  end

  def install
    bin.install stable.url.split("/").last => "mochify"
  end

  test do
    assert_match "mochify", shell_output("#{bin}/mochify --help")
  end
end

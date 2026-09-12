class Tunnelto < Formula
  desc "Public URLs for local AI agents"
  homepage "https://tunnel.to"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.6/tunnelto-darwin-arm64.tar.gz"
      sha256 "5f3108ac5931a7c99d7884f1069df931d4e0cc8d6cd3a65c009331f99ee8a026"
    else
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.6/tunnelto-darwin-amd64.tar.gz"
      sha256 "bad80d8faec451500e919f2b807379576be41f1b8c7cec2c329e78ffaa0b6a41"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.6/tunnelto-linux-arm64.tar.gz"
      sha256 "3851a8ead525ab747331ba0a1d366861f8827d3ae6a32cc24b5f16eaadecf8a5"
    else
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.6/tunnelto-linux-amd64.tar.gz"
      sha256 "5eb73781e14fdfc0f9ca4b3b5c7f7669639e4e6a91705d78b94a9140730c78fa"
    end
  end

  def install
    bin.install "tunnelto"
  end

  test do
    assert_match "tunnelto 0.1.6", shell_output("#{bin}/tunnelto --version")
  end
end

class Tunnelto < Formula
  desc "Public URLs for local AI agents"
  homepage "https://tunnel.to"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.0/tunnelto-darwin-arm64.tar.gz"
      sha256 "08670f79f7077cb274fab461648930250016266145310129e227a0b7c09fcf2e"
    else
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.0/tunnelto-darwin-amd64.tar.gz"
      sha256 "b4b10edd922ad580a1651d4127423bca4679790274e86e72da108c971c110ee3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.0/tunnelto-linux-arm64.tar.gz"
      sha256 "e84bbf5bac5239e175664c7d29d86ac9ed8c0f2e1430c843ea6ebd67bb4e4a29"
    else
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.0/tunnelto-linux-amd64.tar.gz"
      sha256 "4e18c9fe246c2d8409bb92923114f5975166d2caf5ec29e4a002a55cea4054f8"
    end
  end

  def install
    bin.install "tunnelto"
  end

  test do
    assert_match "tunnelto 0.1.0", shell_output("#{bin}/tunnelto --version")
  end
end

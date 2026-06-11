class Tunnelto < Formula
  desc "Public URLs for local AI agents"
  homepage "https://tunnel.to"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.5/tunnelto-darwin-arm64.tar.gz"
      sha256 "a3956715d45c0f92a280fd2bac75847964f4b3545efca8a6eefb756f4431fcea"
    else
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.5/tunnelto-darwin-amd64.tar.gz"
      sha256 "c57d558e4d3a0b41176b6e21da096e29a346f21677da48641f39cf8f7fe28a0d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.5/tunnelto-linux-arm64.tar.gz"
      sha256 "64b1681a489fecc9c36bcbc4bf74706590de8d15b677d0a0bceb526033988909"
    else
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.5/tunnelto-linux-amd64.tar.gz"
      sha256 "b476efa1da024ba9d2fa705da402a794f9e573a1994d39930c9d971c39686b52"
    end
  end

  def install
    bin.install "tunnelto"
  end

  test do
    assert_match "tunnelto 0.1.5", shell_output("#{bin}/tunnelto --version")
  end
end

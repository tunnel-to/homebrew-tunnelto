class Tunnelto < Formula
  desc "Public URLs for local AI agents"
  homepage "https://tunnel.to"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.4/tunnelto-darwin-arm64.tar.gz"
      sha256 "7c35473d9921dc6096dbc27618f97a6dae726dec2e573b946138de207368166a"
    else
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.4/tunnelto-darwin-amd64.tar.gz"
      sha256 "5e6129ee1a2f922ea6efa2a7423c4c6140e875b0893057e7d4eb4477ebae1982"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.4/tunnelto-linux-arm64.tar.gz"
      sha256 "25f5599f5d036e5563b2c57530b20a4e09f454b838c386f6ab148879a5d2c2fe"
    else
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.4/tunnelto-linux-amd64.tar.gz"
      sha256 "cca0e9f9d70266e4f897831a4de04881bd0566a65290f382a329e63ac8f6a3da"
    end
  end

  def install
    bin.install "tunnelto"
  end

  test do
    assert_match "tunnelto 0.1.4", shell_output("#{bin}/tunnelto --version")
  end
end

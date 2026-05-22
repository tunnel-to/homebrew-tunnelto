class Tunnelto < Formula
  desc "Public URLs for local AI agents"
  homepage "https://tunnel.to"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.2/tunnelto-darwin-arm64.tar.gz"
      sha256 "8e685cd4b84b9206d94f6354df7af2158c2438ae66ac21d290a1b902cb2543fa"
    else
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.2/tunnelto-darwin-amd64.tar.gz"
      sha256 "cbd0b94dad4c83e4a6ed4183360f9b93e06fd9a307f8cecfe82e255be3cb5945"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.2/tunnelto-linux-arm64.tar.gz"
      sha256 "7f7a94b1bb5cc3232bc088291366e0088049a45ed2895e9b872d7e664d1b92d9"
    else
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.2/tunnelto-linux-amd64.tar.gz"
      sha256 "c12029f69b2ce944862ffdcc3ecea3f3966dea10e9498ee91f20478d45082f88"
    end
  end

  def install
    bin.install "tunnelto"
  end

  test do
    assert_match "tunnelto 0.1.2", shell_output("#{bin}/tunnelto --version")
  end
end

class Tunnelto < Formula
  desc "Public URLs for local AI agents"
  homepage "https://tunnel.to"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.1/tunnelto-darwin-arm64.tar.gz"
      sha256 "867fc007ebeff9f2e6fe2a373660d65bbd4c3d2cf0d81419de4778e3f2ca2f11"
    else
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.1/tunnelto-darwin-amd64.tar.gz"
      sha256 "2abd4341d720f59708f10b7ab5bb7f1ab652d65425f7994b70172741a1a50108"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.1/tunnelto-linux-arm64.tar.gz"
      sha256 "2dce0fd9ba3263aa2012d8ad9b80082d21dd756f6be677c7c8fa92b7b559e0e9"
    else
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.1/tunnelto-linux-amd64.tar.gz"
      sha256 "1498132e469ebd97bf6685c72e79585b639ff742a29b9903496d88ffc93c085b"
    end
  end

  def install
    bin.install "tunnelto"
  end

  test do
    assert_match "tunnelto 0.1.1", shell_output("#{bin}/tunnelto --version")
  end
end

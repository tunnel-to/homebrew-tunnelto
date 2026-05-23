class Tunnelto < Formula
  desc "Public URLs for local AI agents"
  homepage "https://tunnel.to"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.3/tunnelto-darwin-arm64.tar.gz"
      sha256 "cd73438fe52ed8c09e1c333de2d20ed45607c2c706b442414d278e708945a3b9"
    else
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.3/tunnelto-darwin-amd64.tar.gz"
      sha256 "a281695250ece075798d158405a6b1a3f35f52a08e95c7179adaee990ab89361"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.3/tunnelto-linux-arm64.tar.gz"
      sha256 "64e9925e3ffceb30fc0023853465c0cee218eb4f27e9efb7152eed67850ad174"
    else
      url "https://github.com/tunnel-to/tunnelto-client/releases/download/v0.1.3/tunnelto-linux-amd64.tar.gz"
      sha256 "08fc000717370d6553b7c5e40cd7359f6f3abb1cc1117feee9ca7875b93d963f"
    end
  end

  def install
    bin.install "tunnelto"
  end

  test do
    assert_match "tunnelto 0.1.3", shell_output("#{bin}/tunnelto --version")
  end
end

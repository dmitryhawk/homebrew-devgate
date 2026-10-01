class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.11.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.11.1/devgate-0.11.1-darwin-arm64.tar.gz"
      sha256 "e756e49141523b7c6e37a9b55460257c7a1770636b54bb5d01895e75d5477560"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.11.1/devgate-0.11.1-darwin-amd64.tar.gz"
      sha256 "46bfc66a0fcf0866b40c67090ca3529847769a323ea68ab13342bd97a88c2e9e"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.11.1/devgate-0.11.1-linux-arm64.tar.gz"
      sha256 "e2a1a13159959fc6c1ef362188d17be106eef25a95d65c58e1bca9907d7e3d14"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.11.1/devgate-0.11.1-linux-amd64.tar.gz"
      sha256 "a7944541467e5668811c3c912004fe546d46f52365ad531f6b2c18485cece729"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.11.1", shell_output("#{bin}/devgate --version")
  end
end

class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.22.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.22.0/devgate-0.22.0-darwin-arm64.tar.gz"
      sha256 "576ad3338d4062db936f05e1c5ba2aa6a6325f1c976a6527ee1dff26a692c7c3"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.22.0/devgate-0.22.0-darwin-amd64.tar.gz"
      sha256 "42b90564efb4a5da88c731a602d22270669192a8889dbf73eec3af26a9b481bb"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.22.0/devgate-0.22.0-linux-arm64.tar.gz"
      sha256 "ec4ceab9a63ca47022f2ead766985daced7630075554bdfd7a02522f08fea165"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.22.0/devgate-0.22.0-linux-amd64.tar.gz"
      sha256 "e84a49d5f67f02e1456653ca8c8d9d694b01f7d7c22d98419f9d81853d4e5a2e"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.22.0", shell_output("#{bin}/devgate --version")
  end
end

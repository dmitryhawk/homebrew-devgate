class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.15.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.15.0/devgate-0.15.0-darwin-arm64.tar.gz"
      sha256 "438d6484408a124f63db24fa2597d183de1c84a0a98ee537c829ad898a1f0ccf"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.15.0/devgate-0.15.0-darwin-amd64.tar.gz"
      sha256 "abed7d2a54effddf0ef95c28fa2591284dae7551ed347d9dbc4a76ff552ae714"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.15.0/devgate-0.15.0-linux-arm64.tar.gz"
      sha256 "ae9f8ba0ee396a79e6c0f806110677f56c9780bb62f3f2be43e3c1c7351a4038"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.15.0/devgate-0.15.0-linux-amd64.tar.gz"
      sha256 "78b43cc33ac5f6a658970795492fb0e9619ab4f8f3ac956f1638b635f98fd4b0"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.15.0", shell_output("#{bin}/devgate --version")
  end
end

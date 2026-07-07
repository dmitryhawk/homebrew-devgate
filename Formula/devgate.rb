class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.4.0/devgate-0.4.0-darwin-arm64.tar.gz"
      sha256 "ae23b5d5875e7f6f14a40fbeced8b5012804e0bd117526fbe0f8c273b22b3a59"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.4.0/devgate-0.4.0-darwin-amd64.tar.gz"
      sha256 "f533197958449cf2efc1879dea5312d5dbff3ad646489ad8a2b8c0d1682e756d"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.4.0/devgate-0.4.0-linux-arm64.tar.gz"
      sha256 "6e66f79ee404e5d508a707d4d5a2efa93eb69f42f91ed477aa6a67df631243e7"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.4.0/devgate-0.4.0-linux-amd64.tar.gz"
      sha256 "371415b497f884fed09879a1cc22035d983f45a74bb5b026a20e4c5f71571ba5"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.4.0", shell_output("#{bin}/devgate --version")
  end
end

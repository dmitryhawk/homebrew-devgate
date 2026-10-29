class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.22.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.22.2/devgate-0.22.2-darwin-arm64.tar.gz"
      sha256 "8e655bb747f3904f81cedd1f049753d17f06d7a61d521b85019ab5e1b170ff37"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.22.2/devgate-0.22.2-darwin-amd64.tar.gz"
      sha256 "8967e50ef7ac8828634647a47134b112d3b2b9a6a5fd2ed2fc21af0d5f93c313"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.22.2/devgate-0.22.2-linux-arm64.tar.gz"
      sha256 "a36d12584ee541befa351a9ab7227ce7d5de600845cf04cae326439e9640eeed"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.22.2/devgate-0.22.2-linux-amd64.tar.gz"
      sha256 "02db0f5cbc8cb27cabbdeb61212771005eb436e71195bd0f9d5e7249ba0e97e7"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.22.2", shell_output("#{bin}/devgate --version")
  end
end

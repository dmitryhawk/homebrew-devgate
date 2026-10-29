class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.22.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.22.1/devgate-0.22.1-darwin-arm64.tar.gz"
      sha256 "d74d06eecad20036afc8ed321f73d62a75c316678ad982786279b886715d538b"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.22.1/devgate-0.22.1-darwin-amd64.tar.gz"
      sha256 "bddb758660200ae92b9e906ba12130d2a3c4354cdfacbb09269c89874a768681"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.22.1/devgate-0.22.1-linux-arm64.tar.gz"
      sha256 "843aecb0c7cad2fccd68e3445727555850a88013eb146b9d3e04839b27260b50"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.22.1/devgate-0.22.1-linux-amd64.tar.gz"
      sha256 "d1858538e19a01374c29663b0a51d935ccc950e136009c71ceeaab672380e462"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.22.1", shell_output("#{bin}/devgate --version")
  end
end

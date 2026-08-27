class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.11.0/devgate-0.11.0-darwin-arm64.tar.gz"
      sha256 "fe11be9765f7f58e959f3fee7c2ea307737d23b653542c548a30d8730d5fbc32"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.11.0/devgate-0.11.0-darwin-amd64.tar.gz"
      sha256 "d55fe85fc5ed0bcffa50549eb8fb38a955e28dd37a5fa3a6bd3803be12960fd6"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.11.0/devgate-0.11.0-linux-arm64.tar.gz"
      sha256 "155da1c0d979ea111ffc3de8de16b6f5231b10aefdb1c1f517877c53e6fd87c5"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.11.0/devgate-0.11.0-linux-amd64.tar.gz"
      sha256 "a22f7f20979747b993ad50792c8595e190caca1902c195282a786368d8c53011"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.11.0", shell_output("#{bin}/devgate --version")
  end
end

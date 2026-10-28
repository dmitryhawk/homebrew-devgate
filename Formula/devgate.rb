class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.20.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.20.1/devgate-0.20.1-darwin-arm64.tar.gz"
      sha256 "72734231cf2e8871c4771bcfd5949c4b8d76c1413dcecf5b9124d4545d2d4a10"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.20.1/devgate-0.20.1-darwin-amd64.tar.gz"
      sha256 "79801d79b0025ef8bdea03af375275f1231e7c907427afba075b6bbd14c3a4bf"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.20.1/devgate-0.20.1-linux-arm64.tar.gz"
      sha256 "847f191b4f9b075ce835d65c64e5f735765eae118ff65fed3801c714333a9d41"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.20.1/devgate-0.20.1-linux-amd64.tar.gz"
      sha256 "cdb0217a3353de7a50e872fb8f3d2bdf52a1f81997adee61ee4867ba02122937"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.20.1", shell_output("#{bin}/devgate --version")
  end
end

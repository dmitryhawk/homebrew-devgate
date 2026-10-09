class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.20.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.20.0/devgate-0.20.0-darwin-arm64.tar.gz"
      sha256 "0b0f4b57afed525f90610c3b71e82ed8ca7216c760772481dd3b45d2ed8eb1c1"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.20.0/devgate-0.20.0-darwin-amd64.tar.gz"
      sha256 "96a61a36fa60c4fc362aca81b53c4cd903b2cacd023eddea43f2d23738a849f4"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.20.0/devgate-0.20.0-linux-arm64.tar.gz"
      sha256 "bf8970f6677e3181f4c36085f5d565a14d08a6c096dfdec22b32c2685e088b1b"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.20.0/devgate-0.20.0-linux-amd64.tar.gz"
      sha256 "c8806e3b00bee2e9c64a03134e4adad484c493f3ab3f4a22f832755b2972c1ff"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.20.0", shell_output("#{bin}/devgate --version")
  end
end

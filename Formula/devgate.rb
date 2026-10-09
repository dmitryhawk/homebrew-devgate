class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.18.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.18.0/devgate-0.18.0-darwin-arm64.tar.gz"
      sha256 "b04334443420334b2c1557a2b60cf067b9227c183ff4a26a54e0464a5bf1ab37"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.18.0/devgate-0.18.0-darwin-amd64.tar.gz"
      sha256 "0447452f79879c2c854f4bc7f6cf4af5ecc347c3340d045f9dbbd6218b98649a"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.18.0/devgate-0.18.0-linux-arm64.tar.gz"
      sha256 "45ce6da3df6068e65a5dbc1f70dd40be4c609274c26b5d159c6c1ba33f14029f"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.18.0/devgate-0.18.0-linux-amd64.tar.gz"
      sha256 "a732a32b0dd515eebd8ce64d31aa50fb9e9c5003e9580c747187e2d293ad652f"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.18.0", shell_output("#{bin}/devgate --version")
  end
end

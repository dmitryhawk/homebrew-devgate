class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.12.0/devgate-0.12.0-darwin-arm64.tar.gz"
      sha256 "62106ef2a3fb1293f9ef9e0ff83687445e521fbc8a7cdb7486a786a163f9dce5"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.12.0/devgate-0.12.0-darwin-amd64.tar.gz"
      sha256 "c9a0f77ae546e1a0c9ecd297425ac3f99ce3ce3c1acf26c84bcd02d598347998"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.12.0/devgate-0.12.0-linux-arm64.tar.gz"
      sha256 "61a54f5e25c292d92504ae97be6ad8a41f16825262daa1946e5d62be19c28606"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.12.0/devgate-0.12.0-linux-amd64.tar.gz"
      sha256 "5cab5aa9931620645b2699fc1ca18e24e30637ae05f7edc228834ab6337863a8"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.12.0", shell_output("#{bin}/devgate --version")
  end
end

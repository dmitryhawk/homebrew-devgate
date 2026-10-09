class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.17.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.17.0/devgate-0.17.0-darwin-arm64.tar.gz"
      sha256 "8f3fa503d79eee7654b0184845c1af0bb7284b00684eb93a7681b91f4bb70137"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.17.0/devgate-0.17.0-darwin-amd64.tar.gz"
      sha256 "34d6a075c2d120ec943e5e5e484d7f4083b79dcd38994788e076205f15de41f1"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.17.0/devgate-0.17.0-linux-arm64.tar.gz"
      sha256 "0c3a4a092d9bca17cc3bd8b12b88bcf17fd18d71c0fbea4dee8a5cc097fb3d72"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.17.0/devgate-0.17.0-linux-amd64.tar.gz"
      sha256 "d29b900982e7ab9f593dcee43c9c27c77c283b5ddf0da2549f66772cd1ef8da4"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.17.0", shell_output("#{bin}/devgate --version")
  end
end

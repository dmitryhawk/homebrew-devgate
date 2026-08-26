class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.10.0/devgate-0.10.0-darwin-arm64.tar.gz"
      sha256 "71313de45508502aee52d67fdb70924c5fad77a5e89589968729bdb246d7df0b"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.10.0/devgate-0.10.0-darwin-amd64.tar.gz"
      sha256 "af2778deed134fe64f9fc8fbf2dca6bc97ca657fb8c3a0179f10b9af0b6919cc"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.10.0/devgate-0.10.0-linux-arm64.tar.gz"
      sha256 "a13b507a396b8b3b57fcd2e859e935192f208666e5e760f267b59063af108d95"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.10.0/devgate-0.10.0-linux-amd64.tar.gz"
      sha256 "f295ec44cbf8d063162ccc646f8229ec59a08528a30704751ed02ba4206c9502"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.10.0", shell_output("#{bin}/devgate --version")
  end
end

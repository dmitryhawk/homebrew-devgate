class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.16.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.16.0/devgate-0.16.0-darwin-arm64.tar.gz"
      sha256 "02d14341583bad3376d666c6d49ca137b11c8338f5da73fed75381af2c91a350"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.16.0/devgate-0.16.0-darwin-amd64.tar.gz"
      sha256 "1916feab6d0962f39e9210950c18f218548b602cc4c640729bc959dbce7c5e89"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.16.0/devgate-0.16.0-linux-arm64.tar.gz"
      sha256 "95d0ed662f48968eae729f05907b96090e6ad7ed04b92a59a28d89a80c73b2ba"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.16.0/devgate-0.16.0-linux-amd64.tar.gz"
      sha256 "eb61bf82f3fee307f2309c1fe68e765bbd664b1c6fe7dcf82c3647a9ded4fd86"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.16.0", shell_output("#{bin}/devgate --version")
  end
end

class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.7.0/devgate-0.7.0-darwin-arm64.tar.gz"
      sha256 "e09eff26ee3281febad8b950f190a2e96e47a21803697068b890afd45211c16c"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.7.0/devgate-0.7.0-darwin-amd64.tar.gz"
      sha256 "db4ec78cbac5f1039fc0aa2c2f51e0bd61387c0c72886ed2b002e6034366d894"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.7.0/devgate-0.7.0-linux-arm64.tar.gz"
      sha256 "a97bf4db925fd49bcdf27c308d07fdaefd922bb873f5fbf9f129a222d5216b2d"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.7.0/devgate-0.7.0-linux-amd64.tar.gz"
      sha256 "f31afab4e7ceb24d330eb4dec2655d0a579e732950f015a94f80a74f0c12d0c1"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.7.0", shell_output("#{bin}/devgate --version")
  end
end

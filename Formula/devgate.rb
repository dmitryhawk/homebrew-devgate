class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.14.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.14.0/devgate-0.14.0-darwin-arm64.tar.gz"
      sha256 "d55014ba70ef2f2217d1e35fc833e5c8a62866556bd749dbc4932dde849c41a9"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.14.0/devgate-0.14.0-darwin-amd64.tar.gz"
      sha256 "1a8fa67ace0238fe1c7b0009009bfe0938312c73f5162132d748354bdc7f4540"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.14.0/devgate-0.14.0-linux-arm64.tar.gz"
      sha256 "b2177f01608490a1f5d7a3a118be7df076fb202679d9fa49cc884684f6f02bae"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.14.0/devgate-0.14.0-linux-amd64.tar.gz"
      sha256 "abce307c3870815b706c5c07492e25b15eefa811390363358edc8c53d79b2c0a"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.14.0", shell_output("#{bin}/devgate --version")
  end
end

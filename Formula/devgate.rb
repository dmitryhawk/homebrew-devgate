class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.8.0/devgate-0.8.0-darwin-arm64.tar.gz"
      sha256 "4f71f41f1f3f084408fc7262d675a1cbe38dfa359ca25a239b8fcf68f095d445"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.8.0/devgate-0.8.0-darwin-amd64.tar.gz"
      sha256 "6f6751c72c8efdf5c5cee2878e292738c86345c3a747a5d30a68618cce2e74a6"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.8.0/devgate-0.8.0-linux-arm64.tar.gz"
      sha256 "e6dda743f7d2962b9024f7fd4653cb8a652d4ecb7db162736aba76e715d4cb1e"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.8.0/devgate-0.8.0-linux-amd64.tar.gz"
      sha256 "9f8a334107da8b033b67ca473cbf9c3e277f4f8c0e54568407af1b191564950d"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.8.0", shell_output("#{bin}/devgate --version")
  end
end

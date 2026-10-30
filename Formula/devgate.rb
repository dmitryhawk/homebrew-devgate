class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.22.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.22.3/devgate-0.22.3-darwin-arm64.tar.gz"
      sha256 "91bba27487994454629796cfed5fbf8543c814704d18d1a57e4c3ece5e4463c9"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.22.3/devgate-0.22.3-darwin-amd64.tar.gz"
      sha256 "4619a819905e94b4fd1dda40523d5abd6719e556926fdf1f17b6bd9fe3a50345"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.22.3/devgate-0.22.3-linux-arm64.tar.gz"
      sha256 "d5b7e024ca56d87c5b806d5d939d65fd6144a8aab7f645b21239bfff09087acb"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.22.3/devgate-0.22.3-linux-amd64.tar.gz"
      sha256 "47f23c54a95dcf1bb556bc632886b45c20b913f4d4de6eff40b227956bfa4d47"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.22.3", shell_output("#{bin}/devgate --version")
  end
end

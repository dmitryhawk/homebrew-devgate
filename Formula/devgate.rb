class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.5.0/devgate-0.5.0-darwin-arm64.tar.gz"
      sha256 "5aa998ba25b797130a3f41cabe322960294649a15549ae9f7662f9cbc28097db"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.5.0/devgate-0.5.0-darwin-amd64.tar.gz"
      sha256 "c533fffee0f6e8d9f24a4bb95e2d6860a616942dd8919d81807dff763059f827"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.5.0/devgate-0.5.0-linux-arm64.tar.gz"
      sha256 "34237f21baf2ebe9acf72e0e872f0be9fcd4086d916a332378467a911f8adbe4"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.5.0/devgate-0.5.0-linux-amd64.tar.gz"
      sha256 "e388bb529f7e75752cbd04aabda13f03da6e79fc4cc6dc2b5f5822ee0be1ffd3"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.5.0", shell_output("#{bin}/devgate --version")
  end
end

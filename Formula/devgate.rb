class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.22.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.22.4/devgate-0.22.4-darwin-arm64.tar.gz"
      sha256 "ef543a9058b276fcf5ab6b778da83319f8091a78315161ecefd8aac41b57ca13"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.22.4/devgate-0.22.4-darwin-amd64.tar.gz"
      sha256 "2b323f0848b37dde1c3374c8840402bf096ceef92f164fecaaed50684594a22d"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.22.4/devgate-0.22.4-linux-arm64.tar.gz"
      sha256 "cf0cde8a413d890ceba6321070c91e39743addf11b55b44f66c1bfaf90f79e43"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.22.4/devgate-0.22.4-linux-amd64.tar.gz"
      sha256 "ee9f5a11d13e4548d7d03429e68174b45f2a290bc84ac8b3998adf632dfcf947"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.22.4", shell_output("#{bin}/devgate --version")
  end
end

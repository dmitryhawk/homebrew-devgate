class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.13.0/devgate-0.13.0-darwin-arm64.tar.gz"
      sha256 "79ec21c815c368a49b45bc25a80aeffcc8926344e1760d3e581997e3cf7af498"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.13.0/devgate-0.13.0-darwin-amd64.tar.gz"
      sha256 "ca586c20a7eb8cdf938de0a29aafff3e707e87f348d321a6013b516aede3bfad"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.13.0/devgate-0.13.0-linux-arm64.tar.gz"
      sha256 "6aab720530687aae733ff803db6640cd695dfae564c3b9fc3f0a38f16a26b1dc"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.13.0/devgate-0.13.0-linux-amd64.tar.gz"
      sha256 "13da58134b200f4c1d6e1ce119bc8ea3941913ce7460ce886031006a9ce87a6a"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.13.0", shell_output("#{bin}/devgate --version")
  end
end

class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.19.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.19.0/devgate-0.19.0-darwin-arm64.tar.gz"
      sha256 "e26b29f8396c1909253248b8dbb5b0079388a3aa604943fc2819c22057a7c187"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.19.0/devgate-0.19.0-darwin-amd64.tar.gz"
      sha256 "e9671bb6e817bd650d018cb3a1c42e096d9c63acc8d6636dfc4e32ec8b948077"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.19.0/devgate-0.19.0-linux-arm64.tar.gz"
      sha256 "16e72be184ea4f51a9dc3ccb339d170dc179676833636e3da26da65627b156b0"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.19.0/devgate-0.19.0-linux-amd64.tar.gz"
      sha256 "b7ea8021c59b744ec2cb1525cd3a0aa7905e94d9380f473604e80059dbede1a2"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.19.0", shell_output("#{bin}/devgate --version")
  end
end

class Devgate < Formula
  desc "Put localhost on the internet — secure tunnels to your local ports"
  homepage "https://devgate.online"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.6.0/devgate-0.6.0-darwin-arm64.tar.gz"
      sha256 "a359bacf957b7597c5205ef4299abf58941d56efd275592502036d75c6006579"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.6.0/devgate-0.6.0-darwin-amd64.tar.gz"
      sha256 "fde7bac306ad58c886073e586c87857da6930341114615d942fea168c45f87e3"
    end
  end

  on_linux do
    on_arm do
      url "https://devgate.online/downloads/agent/v0.6.0/devgate-0.6.0-linux-arm64.tar.gz"
      sha256 "7df054b6d6e65449166825e979f4ef7a46cb41cfa3ba7311fd0daaabc7bcbd68"
    end
    on_intel do
      url "https://devgate.online/downloads/agent/v0.6.0/devgate-0.6.0-linux-amd64.tar.gz"
      sha256 "003447e3e36ee332680100533c8f7bb3a361a86c34e3732d7ac5f0bf5e3bd111"
    end
  end

  def install
    bin.install "devgate"
  end

  test do
    assert_match "devgate 0.6.0", shell_output("#{bin}/devgate --version")
  end
end

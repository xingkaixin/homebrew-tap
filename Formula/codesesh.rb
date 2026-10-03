class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.2.4"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.2.4/codesesh-1.2.4-aarch64-apple-darwin.tar.gz"
    sha256 "eae74dfc3b4ee1eb017c1c77c543a0836c6bd982f8048ac373fbeea69e8a38cd"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.2.4/codesesh-1.2.4-x86_64-apple-darwin.tar.gz"
    sha256 "56a4347f7b85fb06adb2bcd7d1eb8a330a034b4d496cb907dc1ed7160359a464"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

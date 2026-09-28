class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.1.1"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.1.1/codesesh-1.1.1-aarch64-apple-darwin.tar.gz"
    sha256 "7fe632bddf1eb26afb7876c2715b08454b8f175f2eeda4dd4dc8c43e80802533"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.1.1/codesesh-1.1.1-x86_64-apple-darwin.tar.gz"
    sha256 "e73c75ac0630bcd301fc8362f34a438d9634e165a6be1520eeec522043ba3d68"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

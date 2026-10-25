class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.4.3"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.4.3/codesesh-1.4.3-aarch64-apple-darwin.tar.gz"
    sha256 "75037249c2618fb984f9ecdf4fa0dac6e6f3a3ca924b8187da6f1bfcd5052bac"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.4.3/codesesh-1.4.3-x86_64-apple-darwin.tar.gz"
    sha256 "a9266ff6b4effd0af081371bd0dc27dc6df92e741008949a15c134f3111cc298"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

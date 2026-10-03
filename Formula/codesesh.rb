class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.2.5"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.2.5/codesesh-1.2.5-aarch64-apple-darwin.tar.gz"
    sha256 "1a92904efe0847e742fcd25d0ff9ccd8016aff60bc1fbb6e5065ccf1bdc09ccf"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.2.5/codesesh-1.2.5-x86_64-apple-darwin.tar.gz"
    sha256 "32f45c02ac55740d73619ac5540e33099987d50c9276a32138e3ac59a4249713"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

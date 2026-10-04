class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.2.7"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.2.7/codesesh-1.2.7-aarch64-apple-darwin.tar.gz"
    sha256 "324cf7449378b69e3edee28cf674b45af4d3e25a46450ad606b6d8f387a05612"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.2.7/codesesh-1.2.7-x86_64-apple-darwin.tar.gz"
    sha256 "0b1fa115d86bb2498f13e5656de3252deef4aebff3955d34683a217e53fd2a0e"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

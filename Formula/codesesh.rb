class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.2.8"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.2.8/codesesh-1.2.8-aarch64-apple-darwin.tar.gz"
    sha256 "3db72f09b85e02dd348f6ee71c1cdfe14c46736ba3271ce86cb94ae11fbd6d7b"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.2.8/codesesh-1.2.8-x86_64-apple-darwin.tar.gz"
    sha256 "5039eb14688e1e551bfa0c57eccfaf39ca93c75b041a70347e97e32859ad85db"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.3.2"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.3.2/codesesh-1.3.2-aarch64-apple-darwin.tar.gz"
    sha256 "b964eac64719d7983ead842991b11063e8ffe29df546065d89f882676474f461"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.3.2/codesesh-1.3.2-x86_64-apple-darwin.tar.gz"
    sha256 "d8ef978c1827a459ba8839b7e5798afcba1ffe2234661a188d2bb2d62cbc46df"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.2.3"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.2.3/codesesh-1.2.3-aarch64-apple-darwin.tar.gz"
    sha256 "113ae0cf3ed57468b603d2e3a61d81fd79be36368383326357ba39efa13340e3"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.2.3/codesesh-1.2.3-x86_64-apple-darwin.tar.gz"
    sha256 "d9dca1111588c7233cbef6f42c4f50599193facb713c99d891a987ba2587cfd9"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

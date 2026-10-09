class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.3.1"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.3.1/codesesh-1.3.1-aarch64-apple-darwin.tar.gz"
    sha256 "c9c4ec4b6b77a3034f73f74158e0cb90ec249237811fa45e563c616f02ca399b"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.3.1/codesesh-1.3.1-x86_64-apple-darwin.tar.gz"
    sha256 "823e7c21a0bac22f42650322cbb5a3b38c42d1ec3212b4467d7bab906b82646e"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

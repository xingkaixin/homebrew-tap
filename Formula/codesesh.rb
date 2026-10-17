class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.4.1"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.4.1/codesesh-1.4.1-aarch64-apple-darwin.tar.gz"
    sha256 "519990bca48b44061dc6c38ca67fe802173fd0609336099436e335b3c92d76d3"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.4.1/codesesh-1.4.1-x86_64-apple-darwin.tar.gz"
    sha256 "5e8bc6eda6a3ce93b713a1dfc35031b4348a4d4853e2070412cdfe828325b661"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

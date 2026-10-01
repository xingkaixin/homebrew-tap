class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.2.2"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.2.2/codesesh-1.2.2-aarch64-apple-darwin.tar.gz"
    sha256 "7126a0dff9fc9dbc3e554d214ec6851e1feb0bb4ae3b2b5ac295568d406e6e62"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.2.2/codesesh-1.2.2-x86_64-apple-darwin.tar.gz"
    sha256 "497ec1059747d55de46233f491fa7815547c0447b31d775ca4a8015a234aea9a"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

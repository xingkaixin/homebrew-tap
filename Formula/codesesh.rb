class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.3.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.3.0/codesesh-1.3.0-aarch64-apple-darwin.tar.gz"
    sha256 "74b20075b45f4cb5ad2823a2bfe1c3e12d34e2833caaa4a29bc15c427344fd3c"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.3.0/codesesh-1.3.0-x86_64-apple-darwin.tar.gz"
    sha256 "f296eacb6418cc1768f190fb1d144e583b9c57784e092371f1c2e6b90826b18d"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

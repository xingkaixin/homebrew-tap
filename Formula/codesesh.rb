class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.2.1"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.2.1/codesesh-1.2.1-aarch64-apple-darwin.tar.gz"
    sha256 "b976245270cde1e13545474675185abfe02959c3c16b94cb718cb4e20d97212e"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.2.1/codesesh-1.2.1-x86_64-apple-darwin.tar.gz"
    sha256 "b043313c36559d5db05c129f09196e5b012a28685e85934a9c51802134bb0396"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

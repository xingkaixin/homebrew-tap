class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.5.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.5.0/codesesh-1.5.0-aarch64-apple-darwin.tar.gz"
    sha256 "6027e967593833969b53690f519dd6a5bf9e6150c569a151a41f4f814d3e20e6"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.5.0/codesesh-1.5.0-x86_64-apple-darwin.tar.gz"
    sha256 "fdd12244f811fe87dc1a3d836b09c4278c7d0e6549f260329a91ec2c1f692c97"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

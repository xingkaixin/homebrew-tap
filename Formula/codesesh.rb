class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.4.4"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.4.4/codesesh-1.4.4-aarch64-apple-darwin.tar.gz"
    sha256 "188e07d3ef41997b2f27b263a375c65d972e3ed5e7901bd5ec9840107ded8b34"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.4.4/codesesh-1.4.4-x86_64-apple-darwin.tar.gz"
    sha256 "fe2cd287fd795cb058798858e334caf17549ea84c2a5a8f1e2f78d4af9d2733e"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

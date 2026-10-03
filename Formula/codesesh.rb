class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.2.6"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.2.6/codesesh-1.2.6-aarch64-apple-darwin.tar.gz"
    sha256 "b91b931aa0bd721fc961eaab8a6c1d3f8ddf73eef9d94a0c85069710c6534d31"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.2.6/codesesh-1.2.6-x86_64-apple-darwin.tar.gz"
    sha256 "01b72f2de3cb52e09b6b97a3d321edfdde83d3d3acf9a4fbcdff8ef5dbb89da0"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

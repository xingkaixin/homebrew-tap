class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.4.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.4.0/codesesh-1.4.0-aarch64-apple-darwin.tar.gz"
    sha256 "e466f975c79deefd35fab2254eaeb8475a219584c0d455546e61d2652c0090ee"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.4.0/codesesh-1.4.0-x86_64-apple-darwin.tar.gz"
    sha256 "7872d748341d03cb5c17394a22a25481d0d9c13e0256fb6cd31d5e0a5f17fca0"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

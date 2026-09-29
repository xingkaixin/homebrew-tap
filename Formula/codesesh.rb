class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.2.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.2.0/codesesh-1.2.0-aarch64-apple-darwin.tar.gz"
    sha256 "af633460622daea8eb7717bdcd50ecad2dd03cd2e52fd43635cd0399216a5b60"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.2.0/codesesh-1.2.0-x86_64-apple-darwin.tar.gz"
    sha256 "8c69e4542f3e7aa050377898a760b7bc67ef647835ad4cec636d6302c92415c4"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

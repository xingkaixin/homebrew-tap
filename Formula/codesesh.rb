class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.4.6"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.4.6/codesesh-1.4.6-aarch64-apple-darwin.tar.gz"
    sha256 "8544c8f5db8a9bb9defc45d4eb4d1fe8ea11616049e5e575fb8bb1aa7953f6be"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.4.6/codesesh-1.4.6-x86_64-apple-darwin.tar.gz"
    sha256 "4463ce0e1b4cff4408c6f60cb1d40fbfc66edbd02dddb7db37e7dac50f7b4a50"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

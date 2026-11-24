class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.5.1"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.5.1/codesesh-1.5.1-aarch64-apple-darwin.tar.gz"
    sha256 "1dc1db66c3aa544b9ecd4ec3db57803a677dd34f6cc3cf15537b137e9b6913ca"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.5.1/codesesh-1.5.1-x86_64-apple-darwin.tar.gz"
    sha256 "191124bd1e70e79889a7c6bb5c442d83cfba05204fa59dce44f5d638b3244e7f"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

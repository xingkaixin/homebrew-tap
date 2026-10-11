class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.3.3"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.3.3/codesesh-1.3.3-aarch64-apple-darwin.tar.gz"
    sha256 "9108f30a4cc6865fdb6790bf7faddc061de420c0549ada4eba36caed51e8a8d6"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.3.3/codesesh-1.3.3-x86_64-apple-darwin.tar.gz"
    sha256 "7d2cf99feb073ce373053b2e76b16391211f6fb92a3bb6e0c7a8f4c1e6f889a1"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

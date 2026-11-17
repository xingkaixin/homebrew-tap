class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.4.7"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.4.7/codesesh-1.4.7-aarch64-apple-darwin.tar.gz"
    sha256 "6acbde0dfcba85f3b4b3848f910da00885108331e215338689b61aed3f84e543"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.4.7/codesesh-1.4.7-x86_64-apple-darwin.tar.gz"
    sha256 "407116deafd0775203f7fd71cfa6127dd7b0b937917b380ede6718a94546f3d9"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

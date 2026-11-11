class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.4.5"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.4.5/codesesh-1.4.5-aarch64-apple-darwin.tar.gz"
    sha256 "f8e1a73689a62c87749662d1a12241b9a12ddba175709fe53813cfd2c22c98e5"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.4.5/codesesh-1.4.5-x86_64-apple-darwin.tar.gz"
    sha256 "5ca8a56118692c86c3dbbd64de444db49861546b9a5263e6c7e9e54cf7d64f96"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

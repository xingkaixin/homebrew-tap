class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.3.4"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.3.4/codesesh-1.3.4-aarch64-apple-darwin.tar.gz"
    sha256 "51e50a5c8d68138c18240d5c751dbdd52f87c4c004b83629781e847289ce9f3f"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.3.4/codesesh-1.3.4-x86_64-apple-darwin.tar.gz"
    sha256 "ebf2e21cf7c2293755bed8c76bf81d3f99497a86ed338876375de5412304fcf2"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

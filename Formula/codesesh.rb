class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.5.2"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.5.2/codesesh-1.5.2-aarch64-apple-darwin.tar.gz"
    sha256 "55a645918d4538c883a85962b014f1ebd70498f8372abd351d01463f7dd5da15"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.5.2/codesesh-1.5.2-x86_64-apple-darwin.tar.gz"
    sha256 "85265972819ab63fe62a4a55c2e3aad3ac65f22bd29c57449f18b98e6c0c5135"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

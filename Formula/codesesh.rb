class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.4.2"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.4.2/codesesh-1.4.2-aarch64-apple-darwin.tar.gz"
    sha256 "75e5f7ebf87927e908ed5061b95b2c2e11f979bf90d402c18c29aa8ec2bc6354"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.4.2/codesesh-1.4.2-x86_64-apple-darwin.tar.gz"
    sha256 "05432ca89ad05b5e6ac3a30623314f5282f2489078024cda39ac473ab9601667"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

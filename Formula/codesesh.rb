class Codesesh < Formula
  desc "Browse local AI coding sessions"
  homepage "https://codesesh.xingkaixin.me"
  version "1.2.9"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.2.9/codesesh-1.2.9-aarch64-apple-darwin.tar.gz"
    sha256 "07e28efc374cb07e48dc9dc6c59d8eedba2dfd7191e8dcdf908159ab06fe056e"
  end

  on_intel do
    url "https://github.com/xingkaixin/codesesh/releases/download/v1.2.9/codesesh-1.2.9-x86_64-apple-darwin.tar.gz"
    sha256 "1af48dfe85ac57de28145a170e569ab8d8bdd039430c07ba10bedf5743408df7"
  end

  def install
    bin.install "codesesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codesesh --version")
    assert_match "Usage:", shell_output("#{bin}/codesesh --help")
  end
end

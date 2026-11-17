class AgentDump < Formula
  desc "Export and search AI coding assistant sessions"
  homepage "https://github.com/xingkaixin/agent-dump"
  version "1.2.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.11/agent-dump-darwin-arm64"
      sha256 "f74873a43cca619e2d6b4678cf9987fd511b2f9875aee65401794bdf760def8a"
    end
    on_intel do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.11/agent-dump-darwin-x64"
      sha256 "1beb1aa157831abd1b4327d2821cb402a9dbeab95af0e4bdfa297fa6565b3a92"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.11/agent-dump-linux-x64"
    sha256 "1d07592c4e377a6575d5cf584d708cf8ae8a9724f06ed6e9cd66e9d5e36425f3"
  end

  def install
    bin.install Dir["agent-dump-*"].fetch(0) => "agent-dump"
  end

  test do
    assert_match "agent-dump #{version}", shell_output("#{bin}/agent-dump --version")
    assert_match "Usage:", shell_output("#{bin}/agent-dump --help")
  end
end

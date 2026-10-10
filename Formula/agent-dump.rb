class AgentDump < Formula
  desc "Export and search AI coding assistant sessions"
  homepage "https://github.com/xingkaixin/agent-dump"
  version "1.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.2/agent-dump-darwin-arm64"
      sha256 "7e75d9686f323a49a76e897afdbb0d37ed6340264a7690b521277ea9ec23da96"
    end
    on_intel do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.2/agent-dump-darwin-x64"
      sha256 "982315fd8499beb2243307f3b62c0ccb71f60950c996b4c2af94819d066da4f8"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.2/agent-dump-linux-x64"
    sha256 "cca9df86c510c9a40a41504d0c68ea28bb01c38892e6e52fba442cddc4a39de5"
  end

  def install
    bin.install Dir["agent-dump-*"].fetch(0) => "agent-dump"
  end

  test do
    assert_match "agent-dump #{version}", shell_output("#{bin}/agent-dump --version")
    assert_match "Usage:", shell_output("#{bin}/agent-dump --help")
  end
end

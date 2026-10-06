class AgentDump < Formula
  desc "Export and search AI coding assistant sessions"
  homepage "https://github.com/xingkaixin/agent-dump"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.0/agent-dump-darwin-arm64"
      sha256 "9d452fddd9231876309f682a7228ad83d741a37887a4da0e1b0c8b6b60b0267b"
    end
    on_intel do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.0/agent-dump-darwin-x64"
      sha256 "9abf00a4336fb340a7a1843ce53e2e5836fe91db0f110271325e409fb7e8c675"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.0/agent-dump-linux-x64"
    sha256 "0e1e07f129d4e2b4647303150802ddb14854c2ec4027fea54d5b3b54aa1b2984"
  end

  def install
    bin.install Dir["agent-dump-*"].fetch(0) => "agent-dump"
  end

  test do
    assert_match "agent-dump #{version}", shell_output("#{bin}/agent-dump --version")
    assert_match "Usage:", shell_output("#{bin}/agent-dump --help")
  end
end

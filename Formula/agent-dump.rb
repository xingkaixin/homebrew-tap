class AgentDump < Formula
  desc "Export and search AI coding assistant sessions"
  homepage "https://github.com/xingkaixin/agent-dump"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.1/agent-dump-darwin-arm64"
      sha256 "f700d7370d032393a9f3b768758ccb1302b5b5e6d31e311665411e88ce8c37d8"
    end
    on_intel do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.1/agent-dump-darwin-x64"
      sha256 "0c50f1f933020a6c52d9f078dc7da7a8b188fa3db7ae135f3a52dd711dc1adc5"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.1/agent-dump-linux-x64"
    sha256 "4203576548011b70bfcf400ff1327a3eeaf4a98e67d1978646cbe74e87226246"
  end

  def install
    bin.install Dir["agent-dump-*"].fetch(0) => "agent-dump"
  end

  test do
    assert_match "agent-dump #{version}", shell_output("#{bin}/agent-dump --version")
    assert_match "Usage:", shell_output("#{bin}/agent-dump --help")
  end
end

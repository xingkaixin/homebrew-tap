class AgentDump < Formula
  desc "Export and search AI coding assistant sessions"
  homepage "https://github.com/xingkaixin/agent-dump"
  version "1.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.8/agent-dump-darwin-arm64"
      sha256 "0336ddabb1a3794b7006505b01ab85f06e5648f2f78bd1d7fa4836bae10f26c1"
    end
    on_intel do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.8/agent-dump-darwin-x64"
      sha256 "456c5baebd7c859bc24ac99493abe28f0aa54c359473de3f33b05918ff818fd7"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.8/agent-dump-linux-x64"
    sha256 "ac88d82738565e13b238010996a7781ff41e2b8c3d7bceeb8ffb2be6b557747c"
  end

  def install
    bin.install Dir["agent-dump-*"].fetch(0) => "agent-dump"
  end

  test do
    assert_match "agent-dump #{version}", shell_output("#{bin}/agent-dump --version")
    assert_match "Usage:", shell_output("#{bin}/agent-dump --help")
  end
end

class AgentDump < Formula
  desc "Export and search AI coding assistant sessions"
  homepage "https://github.com/xingkaixin/agent-dump"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.1.0/agent-dump-darwin-arm64"
      sha256 "ff14e67f49af89f0a4a7f6f47ef28053ab83a1ab45d41eb20c822bcc2ea94426"
    end
    on_intel do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.1.0/agent-dump-darwin-x64"
      sha256 "f2c5737fa4d47352e5500e3e8d7b177db13c4499d22d402479044d2895e8c382"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/xingkaixin/agent-dump/releases/download/v1.1.0/agent-dump-linux-x64"
    sha256 "512e71d77fd0117e5ad932edfde0358e146f9eee57301f8e3f82c1345d1946a6"
  end

  def install
    bin.install Dir["agent-dump-*"].fetch(0) => "agent-dump"
  end

  test do
    assert_match "agent-dump #{version}", shell_output("#{bin}/agent-dump --version")
    assert_match "Usage:", shell_output("#{bin}/agent-dump --help")
  end
end

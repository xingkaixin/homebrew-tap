class AgentDump < Formula
  desc "Export and search AI coding assistant sessions"
  homepage "https://github.com/xingkaixin/agent-dump"
  version "1.2.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.12/agent-dump-darwin-arm64"
      sha256 "694365b3cbaaa85ce904deafad2af0073d994a8c6457bdfe372f864619e7a904"
    end
    on_intel do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.12/agent-dump-darwin-x64"
      sha256 "88b36957e5c4669cf85d355bcffbf08a1a9c5c7510cd7e5821d2d3ed66f74fd0"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.12/agent-dump-linux-x64"
    sha256 "7762dbfdb0d545ed207fb3bd13be8b2b51ae4aa9f9de33b66871fa3700b9d5df"
  end

  def install
    bin.install Dir["agent-dump-*"].fetch(0) => "agent-dump"
  end

  test do
    assert_match "agent-dump #{version}", shell_output("#{bin}/agent-dump --version")
    assert_match "Usage:", shell_output("#{bin}/agent-dump --help")
  end
end

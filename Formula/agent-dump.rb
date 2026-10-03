class AgentDump < Formula
  desc "Export and search AI coding assistant sessions"
  homepage "https://github.com/xingkaixin/agent-dump"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.1.1/agent-dump-darwin-arm64"
      sha256 "45cc248ec1a69bdf2c5778403ff131842804df5f89b1ad0a69060324fa6ce452"
    end
    on_intel do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.1.1/agent-dump-darwin-x64"
      sha256 "c37ef877662f12148646c0fd09ca41be40001b73d511197f74f37fd0428e9ddc"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/xingkaixin/agent-dump/releases/download/v1.1.1/agent-dump-linux-x64"
    sha256 "3bb9cac39d41434d992db3e02220e47729d66a8f968a67cc5bf832ebaf92e0ea"
  end

  def install
    bin.install Dir["agent-dump-*"].fetch(0) => "agent-dump"
  end

  test do
    assert_match "agent-dump #{version}", shell_output("#{bin}/agent-dump --version")
    assert_match "Usage:", shell_output("#{bin}/agent-dump --help")
  end
end

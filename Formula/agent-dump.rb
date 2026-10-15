class AgentDump < Formula
  desc "Export and search AI coding assistant sessions"
  homepage "https://github.com/xingkaixin/agent-dump"
  version "1.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.4/agent-dump-darwin-arm64"
      sha256 "27abeebd03b97d9b0292b8f069da4ba02d047cfe3547a17c5eff00b4669e1304"
    end
    on_intel do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.4/agent-dump-darwin-x64"
      sha256 "c8ce3f95d8c8706ff2a13fe2cee3354e24219ced95c18909d56f22febbca723a"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.4/agent-dump-linux-x64"
    sha256 "3953b7cd03c1d073cd218f143951650357948763c9f49ee38549de5a28f05703"
  end

  def install
    bin.install Dir["agent-dump-*"].fetch(0) => "agent-dump"
  end

  test do
    assert_match "agent-dump #{version}", shell_output("#{bin}/agent-dump --version")
    assert_match "Usage:", shell_output("#{bin}/agent-dump --help")
  end
end

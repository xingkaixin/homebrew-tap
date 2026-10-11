class AgentDump < Formula
  desc "Export and search AI coding assistant sessions"
  homepage "https://github.com/xingkaixin/agent-dump"
  version "1.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.3/agent-dump-darwin-arm64"
      sha256 "00b78cd01fe4afa5902429954428374045331a91e928037ea924e1be1e85ad8d"
    end
    on_intel do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.3/agent-dump-darwin-x64"
      sha256 "02963015129765b49b8e5112da88f9fecc354805f92fe0efff3ecc47ffcb7cc9"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.3/agent-dump-linux-x64"
    sha256 "5386c41bf728b876d94d85273bbe7d1d6ac59dfd2b6dc8b6e84bbca958de77a6"
  end

  def install
    bin.install Dir["agent-dump-*"].fetch(0) => "agent-dump"
  end

  test do
    assert_match "agent-dump #{version}", shell_output("#{bin}/agent-dump --version")
    assert_match "Usage:", shell_output("#{bin}/agent-dump --help")
  end
end

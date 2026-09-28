class AgentDump < Formula
  desc "Export and search AI coding assistant sessions"
  homepage "https://github.com/xingkaixin/agent-dump"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.0.0/agent-dump-darwin-arm64"
      sha256 "6e5fd6471d9d13a9e01e479464bf0ad99edc01a90fab98daa181e647b6591de8"
    end
    on_intel do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.0.0/agent-dump-darwin-x64"
      sha256 "f74abb094e535a0715b1ea851a5f8c0eb8b0f25ab7f1ad1fea317c369f903277"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/xingkaixin/agent-dump/releases/download/v1.0.0/agent-dump-linux-x64"
    sha256 "783b18a063a8da3df209c0f77fad09bd26e14053b74bb826a0bda083368bfa51"
  end

  def install
    bin.install Dir["agent-dump-*"].fetch(0) => "agent-dump"
  end

  test do
    assert_match "agent-dump #{version}", shell_output("#{bin}/agent-dump --version")
    assert_match "Usage:", shell_output("#{bin}/agent-dump --help")
  end
end

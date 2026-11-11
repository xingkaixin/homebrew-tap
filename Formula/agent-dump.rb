class AgentDump < Formula
  desc "Export and search AI coding assistant sessions"
  homepage "https://github.com/xingkaixin/agent-dump"
  version "1.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.9/agent-dump-darwin-arm64"
      sha256 "66e97486b5d275cbc4fe54e03e063d37cea57fb59efb01a2e36fa5cbc12a9bc7"
    end
    on_intel do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.9/agent-dump-darwin-x64"
      sha256 "c3ccca4fd84d5b3e0028b0ba9e2eb0fe7b304b48cbb623bab97fc8d3580d39d1"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.9/agent-dump-linux-x64"
    sha256 "7db43069d2032c367049ec0b4b7b36c6ee548ade630a5d932018ccd90a5a2d6f"
  end

  def install
    bin.install Dir["agent-dump-*"].fetch(0) => "agent-dump"
  end

  test do
    assert_match "agent-dump #{version}", shell_output("#{bin}/agent-dump --version")
    assert_match "Usage:", shell_output("#{bin}/agent-dump --help")
  end
end

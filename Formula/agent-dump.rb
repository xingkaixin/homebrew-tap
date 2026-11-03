class AgentDump < Formula
  desc "Export and search AI coding assistant sessions"
  homepage "https://github.com/xingkaixin/agent-dump"
  version "1.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.7/agent-dump-darwin-arm64"
      sha256 "8ca0baaad1744b05c0243455d11c0cdd6a11a15a0888297e712806ddce8ac7e9"
    end
    on_intel do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.7/agent-dump-darwin-x64"
      sha256 "f67bb5dd3a5ae7ceee637e3ff8ee81f36b337815b3d36858cc6a332a67ae1f58"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.7/agent-dump-linux-x64"
    sha256 "f47e36b95c94666f3d6ddd2d6c4ed9339234fed5549c83090f5dea70f6f97fc0"
  end

  def install
    bin.install Dir["agent-dump-*"].fetch(0) => "agent-dump"
  end

  test do
    assert_match "agent-dump #{version}", shell_output("#{bin}/agent-dump --version")
    assert_match "Usage:", shell_output("#{bin}/agent-dump --help")
  end
end

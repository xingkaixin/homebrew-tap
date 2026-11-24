class AgentDump < Formula
  desc "Export and search AI coding assistant sessions"
  homepage "https://github.com/xingkaixin/agent-dump"
  version "1.2.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.13/agent-dump-darwin-arm64"
      sha256 "abca8650da8af0cab0df4c1ccc9de9a3ac6222c2d4d200fe9e2c221b3fad5344"
    end
    on_intel do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.13/agent-dump-darwin-x64"
      sha256 "806999c973942509a1c85879af207232fd77c57c277b39effe182acc9c43a557"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.13/agent-dump-linux-x64"
    sha256 "fd0108f771cef2550fa303bf652c77e20eb041e215c0747e61624159aed7dbef"
  end

  def install
    bin.install Dir["agent-dump-*"].fetch(0) => "agent-dump"
  end

  test do
    assert_match "agent-dump #{version}", shell_output("#{bin}/agent-dump --version")
    assert_match "Usage:", shell_output("#{bin}/agent-dump --help")
  end
end

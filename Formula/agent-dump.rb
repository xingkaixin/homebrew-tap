class AgentDump < Formula
  desc "Export and search AI coding assistant sessions"
  homepage "https://github.com/xingkaixin/agent-dump"
  version "1.2.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.10/agent-dump-darwin-arm64"
      sha256 "877711360a450c0543a3442323420964c895841dc1c994e0af330fbf8b731b98"
    end
    on_intel do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.10/agent-dump-darwin-x64"
      sha256 "4b737e318e0936947ca01eeb4defd146a3e6516af0a86197a2c1d7d5205e52ac"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.10/agent-dump-linux-x64"
    sha256 "00806ec9d868d6599a716a0f23c7822e2dc803a4c01b2b721a67431905ce6f3a"
  end

  def install
    bin.install Dir["agent-dump-*"].fetch(0) => "agent-dump"
  end

  test do
    assert_match "agent-dump #{version}", shell_output("#{bin}/agent-dump --version")
    assert_match "Usage:", shell_output("#{bin}/agent-dump --help")
  end
end

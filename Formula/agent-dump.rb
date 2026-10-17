class AgentDump < Formula
  desc "Export and search AI coding assistant sessions"
  homepage "https://github.com/xingkaixin/agent-dump"
  version "1.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.5/agent-dump-darwin-arm64"
      sha256 "8202a5a256eeec848b586e796bd8d596f23a591eff7aac5bd95a8d87129d83e0"
    end
    on_intel do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.5/agent-dump-darwin-x64"
      sha256 "a63b55f4b40a7e6e9f6f6bc2349c2a9879f8d101ca42b8a5ad95aa3173038db4"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.5/agent-dump-linux-x64"
    sha256 "a3cecb7866970d2b42fe53439fdb8b8c4762af1420d5c35bd9130b235863d6ba"
  end

  def install
    bin.install Dir["agent-dump-*"].fetch(0) => "agent-dump"
  end

  test do
    assert_match "agent-dump #{version}", shell_output("#{bin}/agent-dump --version")
    assert_match "Usage:", shell_output("#{bin}/agent-dump --help")
  end
end

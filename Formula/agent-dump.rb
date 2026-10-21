class AgentDump < Formula
  desc "Export and search AI coding assistant sessions"
  homepage "https://github.com/xingkaixin/agent-dump"
  version "1.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.6/agent-dump-darwin-arm64"
      sha256 "4ea599a275ee882a4f9a8b8de5e02ce6323f4fc6e1fdbe1286909b52dbf5e3e3"
    end
    on_intel do
      url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.6/agent-dump-darwin-x64"
      sha256 "b02cb4f14c5485ead99d3932e0206e7976ab8a35a2b7b139ba8c31b132686834"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/xingkaixin/agent-dump/releases/download/v1.2.6/agent-dump-linux-x64"
    sha256 "9222032b5d1c505b95bdbf429509b26c0a65cd8a88019d81dd9b5ddab0c3023d"
  end

  def install
    bin.install Dir["agent-dump-*"].fetch(0) => "agent-dump"
  end

  test do
    assert_match "agent-dump #{version}", shell_output("#{bin}/agent-dump --version")
    assert_match "Usage:", shell_output("#{bin}/agent-dump --help")
  end
end

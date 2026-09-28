# Homebrew tap

Homebrew formulae maintained by xingkaixin.

```sh
brew install xingkaixin/tap/codesesh
brew upgrade codesesh
brew uninstall codesesh
```

CodeSesh supports Apple Silicon and Intel Macs. No Node.js installation is required.
Run `codesesh` after installing. Stop any running CodeSesh process before upgrading, then restart it.

CodeSesh releases update `Formula/codesesh.rb` from verified GitHub Release assets through the CodeSesh distribution workflow. Other tools can add their own formulae independently.

## Agent Dump

```sh
brew install xingkaixin/tap/agent-dump
brew upgrade agent-dump
brew uninstall agent-dump
```

Agent Dump supports macOS Apple Silicon/Intel and Linux x64. It installs a native CLI without Python or Node.js. Run `agent-dump --help` after installing. Its release workflow maintains `Formula/agent-dump.rb` independently.

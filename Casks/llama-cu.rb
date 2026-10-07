cask "llama-cu" do
  version "0.2.0"
  sha256 "e1af6b86d4c3f5957b350dec9984e162b993b85a093a54fd96e9bcea1d8ce9b4"

  url "https://github.com/rselbach/llama-cu/releases/download/v#{version}/llama-cu-#{version}-macos-arm64.zip"
  name "llama-cu"
  desc "Command-line tool that lets agents operate desktop apps"
  homepage "https://github.com/rselbach/llama-cu"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "llama-cu.app"
  binary "#{appdir}/llama-cu.app/Contents/MacOS/llama-cu"

  caveats <<~EOS
    Grant Accessibility and Screen Recording to llama-cu.app:
      llama-cu doctor --prompt
    Install the agent skill for Pi and Codex, or pass --dir for another agent:
      llama-cu install-skill
  EOS
end

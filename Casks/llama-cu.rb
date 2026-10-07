cask "llama-cu" do
  version "9.9.9"
  sha256 "2374d41073e14c658f67aa4273d1a02be9ec60e14c0fbe5d711be2b8c5405034"

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

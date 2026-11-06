cask "llama-cu" do
  version "0.5.0"
  sha256 "3a935644de030ba91f7f1c32f665ddfcd5a9e27c5c40dba2c630d8abf0bfa041"

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

cask "barsignal" do
  version "0.0.8"
  sha256 "7941a04e43c7a2247b4eefa088e582de5607ede295ff0bd75593d60262bcf027"

  url "https://github.com/rselbach/barsignal/releases/download/v#{version}/BarSignal-#{version}.dmg"
  name "BarSignal"
  desc "Menu bar app that shows a visual signal for configurable events"
  homepage "https://github.com/rselbach/BarSignal"

  depends_on macos: ">= :sonoma"

  app "BarSignal.app"

  zap trash: [
    "~/Library/Preferences/com.selbach.BarSignal.plist",
  ]
end

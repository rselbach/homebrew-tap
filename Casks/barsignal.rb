cask "barsignal" do
  version "0.0.9"
  sha256 "a9ea6e151c612b0ed7f609a3bd5014020a7f03ac514219915911e4ce71d39e7c"

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

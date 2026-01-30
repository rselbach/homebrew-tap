cask "barsignal" do
  version "0.1.1"
  sha256 "1d8f7724ffe75da480d2dacb5bf401cbfa515d13e80f16a032d8148db3978d5d"

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

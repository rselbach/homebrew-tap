cask "barsignal" do
  version "0.1.2"
  sha256 "824accb5339a19d3fb27a1d5e55873daa358f5d322633b2704ce355a9be80695"

  url "https://github.com/rselbach/barsignal/releases/download/v#{version}/BarSignal-#{version}.dmg"
  name "BarSignal"
  desc "Menu bar app that shows a visual signal for configurable events"
  homepage "https://github.com/rselbach/BarSignal"

  depends_on macos: ">= :sonoma"

  app "BarSignal.app"

  zap trash: [
    "~/Library/Preferences/com.rselbach.barsignal.plist",
  ]
end

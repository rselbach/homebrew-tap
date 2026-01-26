cask "barsignal" do
  version "0.1.0"
  sha256 "16a871e4537ca6c5054c3d0452409dbb6b99e6ed8f0b260193a92b7c473265e0"

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

cask "barsignal" do
  version "0.0.7"
  sha256 "aad04be8d3c7080f446153744d70903f3fbadf726ea8cabd71f1c1af1e31eedd"

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

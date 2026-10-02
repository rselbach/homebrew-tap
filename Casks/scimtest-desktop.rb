cask "scimtest-desktop" do
  version "2.4.1"
  sha256 "1f420d84c86f083ba3447a07c51f9064bfb319ee8cc334c68794f1f4485bfde8"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

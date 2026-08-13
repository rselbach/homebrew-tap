cask "scimtest-desktop" do
  version "2.0.0"
  sha256 "e41ca7eb95692ab8fd0d42bda0c352f5e0da7787178d90c937ae5e58fbc5c922"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_universal.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

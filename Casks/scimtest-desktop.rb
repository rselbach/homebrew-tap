cask "scimtest-desktop" do
  version "2.0.1"
  sha256 "7fceebdfcba398297e7ea7afe06ccfd233f2578ab63d16170ea9a62131b30cd2"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_universal.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

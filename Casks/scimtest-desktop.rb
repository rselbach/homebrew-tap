cask "scimtest-desktop" do
  version "2.0.3"
  sha256 "5da17d5dc11a574f12b78c2df726947171ceccd842564ac819fd27d01d62bc3a"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

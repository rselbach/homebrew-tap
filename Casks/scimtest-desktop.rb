cask "scimtest-desktop" do
  version "3.1.0"
  sha256 "0a0195b97bc324d09748ed339f3148a1c879f7e479f818bde74458edb9c410b7"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "scimtest.app"
end

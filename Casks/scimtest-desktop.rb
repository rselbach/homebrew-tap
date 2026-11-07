cask "scimtest-desktop" do
  version "3.1.1"
  sha256 "973b28610121cb388143f5334ae3057451535028cabe535dbc5f72a1292695c1"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "scimtest.app"
end

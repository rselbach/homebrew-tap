cask "scimtest-desktop" do
  version "2.0.4"
  sha256 "89a53104a0bc1aaf4a50dee88117f8bd164672b7499d9853e9193f153598cfeb"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

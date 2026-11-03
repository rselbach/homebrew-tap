cask "scimtest-desktop" do
  version "2.5.0"
  sha256 "ffa8562e7c49df347fe1685667c170a6dcedd4fa3b41ba7ff11266014df9ae1d"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

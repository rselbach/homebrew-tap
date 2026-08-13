cask "scimtest-desktop" do
  version "2.0.5"
  sha256 "bcf60315c0dc7ccfefc09ec908601417b9ef1c2604f1b0e96c121fcc11c16cc0"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

cask "scimtest-desktop" do
  version "2.6.2"
  sha256 "80de67feb131b620af18c30e30798eb7a03ee99dc3acd82a8e3c369a2ce72336"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

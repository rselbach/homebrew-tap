cask "scimtest-desktop" do
  version "3.4.1"
  sha256 "07265549d7bc4c849be5abdb048d1273841a8e1ba836fc3c5e57f1f034bbf812"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

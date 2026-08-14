cask "scimtest-desktop" do
  version "2.0.8"
  sha256 "a4eed559a5be24517fa8185f27ab45b88b8bcc13851a96e5f824421272ba8bfb"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

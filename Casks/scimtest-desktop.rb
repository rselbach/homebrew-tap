cask "scimtest-desktop" do
  version "2.0.6"
  sha256 "e5d7b78889be05b2eb4b83557d70fb27271de501a31c35a7ff96b9301bac3b32"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

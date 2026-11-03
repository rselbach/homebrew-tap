cask "scimtest-desktop" do
  version "2.5.1"
  sha256 "523d8613f0517cd6730e0bd5c695fd7b83f98641dd4a7d7ca69e4e46fdd2f181"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

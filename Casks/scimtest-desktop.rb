cask "scimtest-desktop" do
  version "2.0.11"
  sha256 "670544f3387a01bb1af1f458e0a3011abd485460f3bd50b7096e540359427997"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

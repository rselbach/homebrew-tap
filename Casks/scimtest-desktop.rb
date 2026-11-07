cask "scimtest-desktop" do
  version "3.2.0"
  sha256 "4eb004a7db3ef0f3daed269716736299be61d8903ba60f9981f117fa8e4ff987"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

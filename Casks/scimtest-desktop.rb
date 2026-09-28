cask "scimtest-desktop" do
  version "2.3.0"
  sha256 "c998b1c2e9b62622b699c1b88c1461ef0a091f528e2942e53a4752c787c7c126"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

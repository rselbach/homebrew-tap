cask "scimtest-desktop" do
  version "3.0.0"
  sha256 "333b1fb73feb8a45d1be26b561d13b463c4bbfc4ccca4dde822fd93885e81adf"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "scimtest.app"
end

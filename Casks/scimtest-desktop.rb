cask "scimtest-desktop" do
  version "2.1.0"
  sha256 "a827dad5cd1b2488759c57a5e625dc7ce2e9dd0849ccacc4566dba94d9cb0ac5"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

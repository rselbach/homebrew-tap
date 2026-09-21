cask "scimtest-desktop" do
  version "2.2.1"
  sha256 "cf1ebfc3bf4b23cd3d7ab12d23d52bb9340c684ef9bcb6c9f767f45b716f1d7d"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

cask "scimtest-desktop" do
  version "2.6.0"
  sha256 "b932d6fee3047a4f33a3d514a422cc8c70443c4261f3e97ed52ef9d731dd657c"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

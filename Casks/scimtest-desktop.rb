cask "scimtest-desktop" do
  version "3.4.0"
  sha256 "727fcc448209499b5c75615bfee03a3eafa2fc680ff0edea3df33d345a7bdcdb"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

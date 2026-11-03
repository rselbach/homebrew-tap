cask "scimtest-desktop" do
  version "2.6.1"
  sha256 "aeb21783868a16a3f15f03d46fa3591666b5174c77bccdb9f966ca78d492df7e"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

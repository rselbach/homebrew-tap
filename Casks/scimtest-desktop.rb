cask "scimtest-desktop" do
  version "2.2.0"
  sha256 "6041f9ca6f429f8a9030176f5805af51d0fe7034849142f7f6dabf3ed40041c4"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

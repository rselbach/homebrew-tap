cask "scimtest-desktop" do
  version "2.0.2"
  sha256 "ece703527d4fea51a66b01baa1eebc07d749ddb907120d56f73ef54be33538c3"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_universal.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

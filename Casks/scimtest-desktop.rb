cask "scimtest-desktop" do
  version "3.3.0"
  sha256 "c467e44c3c53902e7b832ee293e12fbdfa2f2d5a0308aacc65aaab7c448efecc"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "scimtest.app"
end

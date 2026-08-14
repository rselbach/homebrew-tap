cask "scimtest-desktop" do
  version "2.0.9"
  sha256 "832b9ba06bb982b310136355a0c288b1f81268700158f2bbaff5eb90ba3fffdd"

  url "https://github.com/rselbach/scimtest/releases/download/v#{version}/scimtest-desktop_#{version}_arm64.dmg"
  name "scimtest"
  desc "Desktop SCIM, OIDC, and SAML testing service"
  homepage "https://github.com/rselbach/scimtest"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "scimtest.app"
end

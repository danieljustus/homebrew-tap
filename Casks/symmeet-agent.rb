cask "symmeet-agent" do
  version "0.3.0"
  sha256 "866a9189eee2a23a13f0dd490d369f9ce6274ac14e517f9f862fb2925938e253"

  url "https://github.com/danieljustus/symaira-meet/releases/download/v0.3.0/SymMeetAgent_v0.3.0.dmg"
  name "SymMeetAgent"
  desc "Consent-first local meeting recording agent"
  homepage "https://github.com/danieljustus/symaira-meet"

  depends_on macos: :sequoia

  app "SymMeetAgent.app"

  zap trash: [
    "~/Library/Caches/dev.symaira.symmeet.agent",
    "~/Library/Preferences/dev.symaira.symmeet.agent.plist",
  ]
end

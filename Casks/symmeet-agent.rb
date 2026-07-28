cask "symmeet-agent" do
  version "0.2.0"
  sha256 "442fef8a3c3a51b206a1915d297af6ce25f8cc3f0512ae24f3bc4036d5c5ab8f"

  url "https://github.com/danieljustus/symaira-meet/releases/download/v0.2.0/SymMeetAgent_v0.2.0.dmg"
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

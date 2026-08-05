cask "symmeet-agent" do
  version "0.3.1"
  sha256 "8178889202a9dac4d9d885bd1b7c7579156cff829386d123e94e8aa9b638f7bc"

  url "https://github.com/danieljustus/symaira-meet/releases/download/v0.3.1/SymMeetAgent_v0.3.1.dmg"
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

cask "symmeet-agent" do
  version "0.3.1"
  sha256 "8178889202a9dac4d9d885bd1b7c7579156cff829386d123e94e8aa9b638f7bc"

  url "https://github.com/danieljustus/symaira-meet/releases/download/v#{version}/SymMeetAgent_v#{version}.dmg"
  name "Symaira Meet Agent"
  desc "Consent-first local meeting recording agent"
  homepage "https://github.com/danieljustus/symaira-meet"

  depends_on macos: :sequoia

  disable! date: "2026-08-24", because: "absorbed into symaira-desktop (SymDesk)"

  app "SymMeetAgent.app"

  zap trash: [
    "~/Library/Caches/dev.symaira.symmeet.agent",
    "~/Library/Preferences/dev.symaira.symmeet.agent.plist",
  ]
end

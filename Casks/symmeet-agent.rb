cask "symmeet-agent" do
  version "0.1.0"
  sha256 "a5cd065a740e42332bfd1573ad366acbd71d5f64b382de99834d8c53115cc73e"

  url "https://github.com/danieljustus/symaira-meet/releases/download/v#{version}/SymMeetAgent_v#{version}.dmg"
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

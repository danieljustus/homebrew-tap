cask "symskills" do
  version "0.1.10"
  sha256 "46b10bdea64c1e095ad65fd6a4c3ff90aa97a612c65c14131b74d9ae1b9b879b"

  url "https://github.com/danieljustus/symaira-skills/releases/download/v#{version}/Symskills.dmg"
  name "Symskills"
  desc "Portable Skill SSOT manager for local AI agent harnesses"
  homepage "https://github.com/danieljustus/symaira-skills"

  livecheck do
    url "https://github.com/danieljustus/symaira-skills/releases/latest"
    strategy :header_match
    regex(/Symskills\.dmg/i)
  end

  depends_on macos: :sonoma

  app "Symskills.app"

  zap trash: [
    "~/Library/Application Support/dev.symaira.Symskills",
    "~/Library/Preferences/dev.symaira.Symskills.plist",
    "~/Library/Caches/dev.symaira.Symskills",
  ]
end

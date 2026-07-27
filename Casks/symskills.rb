cask "symskills" do
  version "0.1.8"
  sha256 "d38b466db04bae4dfcb06e0136fcde1a07d5ab5e09ffa1bca51443bdc4853166"

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

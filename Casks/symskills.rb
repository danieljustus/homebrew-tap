cask "symskills" do
  version "0.4.0"
  sha256 "8c67502a55613d6edd3786cedec877222d9f0dabe1a6b234c564e2b1296dfe6d"

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

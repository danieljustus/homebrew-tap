cask "symskills" do
  version "0.1.9"
  sha256 "9daed13da2e7c9fa3d27ea7864021c63ef02dcd349fdbc14c98faf302169c03d"

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

cask "symskills" do
  version "0.2.0"
  sha256 "e0ef054a9a217a66c021d3d0b969c6276e4efabdd0d3a9dbebb73eee9a53b01b"

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

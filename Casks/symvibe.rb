cask "symvibe" do
  version "0.10.5"
  sha256 "2fc140e408fe62373b890d82a5e1793253cbc4f6b4e0ec5cf577f7f0b74d6827"

  url "https://github.com/danieljustus/symaira-vibecoder/releases/download/v#{version}/Symvibe-#{version}.dmg"
  name "Symaira VibeCoder"
  desc "Graphical Vibe-Coding Baukasten that drives opencode"
  homepage "https://github.com/danieljustus/symaira-vibecoder"

  livecheck do
    url "https://github.com/danieljustus/symaira-vibecoder/releases/latest"
    strategy :header_match
    regex(/Symvibe-(\d+(?:\.\d+)*)\.dmg/i)
  end

  depends_on macos: :sonoma

  app "Symvibe.app"

  zap trash: [
    "~/Library/Application Support/dev.symaira.Symvibe",
    "~/Library/Preferences/dev.symaira.Symvibe.plist",
    "~/Library/Caches/dev.symaira.Symvibe",
  ]
end

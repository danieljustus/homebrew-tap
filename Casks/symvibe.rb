cask "symvibe" do
  version "0.10.3"
  sha256 "f4ac096a23bced5ecaacd54f23e92c26f4a14974a34c62e58a871d5ff576eaf4"

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

cask "symvibe" do
  version "0.11.0"
  sha256 "0076f47b032efefaa2670528a642847a6687298eb605554cfce64e5789a8a949"

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

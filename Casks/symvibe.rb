cask "symvibe" do
  version "0.12.0"
  sha256 "bc73935bf200ff0f3db457191118df1e008cc3f1227d9237edd5564f25b51575"

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

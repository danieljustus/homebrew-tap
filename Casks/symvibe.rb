cask "symvibe" do
  version "0.8.0"
  sha256 "f28f1b26f03a70ec116060eb4be8e8694ed358ce8daa7edd9c310fccb56aa361"

  url "https://github.com/danieljustus/symaira-vibecoder/releases/download/v#{version}/Symvibe-#{version}.dmg"
  name "Symaira VibeCoder"
  desc "Graphical Vibe-Coding Baukasten that drives opencode"
  homepage "https://github.com/danieljustus/symaira-vibecoder"

  livecheck do
    url "https://github.com/danieljustus/symaira-vibecoder/releases/latest"
    strategy :header_match
    regex(/Symvibe-(\\d+(?:\.\\d+)*)\.dmg/i)
  end

  depends_on macos: :sonoma

  app "Symvibe.app"

  zap trash: [
    "~/Library/Application Support/dev.symaira.Symvibe",
    "~/Library/Preferences/dev.symaira.Symvibe.plist",
    "~/Library/Caches/dev.symaira.Symvibe",
  ]
end

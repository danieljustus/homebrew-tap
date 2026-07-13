cask "symdesk-app" do
  version "0.6.11"
  sha256 "25bb974c74af09c4dd5c0b0df200afe5111f234dc45082028bd09c4d20eb5952"

  url "https://github.com/danieljustus/symaira-desktop/releases/download/v#{version}/SymDesk-#{version}.dmg"
  name "SymDesk"
  desc "Local-first markdown vault workspace"
  homepage "https://github.com/danieljustus/symaira-desktop"

  livecheck do
    url "https://github.com/danieljustus/symaira-desktop/releases/latest"
    strategy :header_match
    regex(/SymDesk-(\d+(?:\.\d+)*)\.dmg/i)
  end

  depends_on macos: :sonoma

  app "SymDesk.app"

  zap trash: [
    "~/Library/Application Support/SymDesk",
    "~/Library/Preferences/com.symaira.desktop.plist",
    "~/Library/Caches/com.symaira.desktop",
  ]
end

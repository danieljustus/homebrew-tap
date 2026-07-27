cask "symdesk-app" do
  version "0.7.1"
  sha256 "ea46d47345f47a18b12d82e6800d8ff69386caf4f694a0716a02046789ea3252"

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

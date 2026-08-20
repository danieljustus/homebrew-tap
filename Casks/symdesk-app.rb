cask "symdesk-app" do
  version "0.9.0"
  sha256 "8d70bf8f6837ff0e69b6364c8cc0e15a2207f6dcd9e6283be659cf9aa772a6bc"

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

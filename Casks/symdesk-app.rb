cask "symdesk-app" do
  version "0.6.10"
  sha256 "3de94c14a258ce335d95bfe2b606c6a6bd4b1ca67cd12171dbd2696f75d7130f"

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

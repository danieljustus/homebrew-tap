cask "symdesk-app" do
  version "0.13.2"
  sha256 "7d60465340f61bcec5dbeb4ab6c19274057ec40088f1b6d0bda9fb2b5614ddea"

  url "https://github.com/danieljustus/symaira-desktop/releases/download/v#{version}/Symaira-Desktop-#{version}-macos.dmg"
  name "Symaira Desktop"
  desc "Local-first markdown vault workspace"
  homepage "https://github.com/danieljustus/symaira-desktop"

  livecheck do
    url "https://github.com/danieljustus/symaira-desktop/releases/latest"
    strategy :header_match
    regex(/Symaira-Desktop-(\d+(?:\.\d+)*)-macos\.dmg/i)
  end

  depends_on macos: :sonoma

  app "SymDesk.app"

  zap trash: [
    "~/Library/Application Support/SymDesk",
    "~/Library/Preferences/com.symaira.desktop.plist",
    "~/Library/Caches/com.symaira.desktop",
  ]
end

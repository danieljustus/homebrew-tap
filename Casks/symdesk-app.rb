cask "symdesk-app" do
  version "0.13.3"
  sha256 "379f5dcdc5d379ee0d346ccec45c12d2f8ad1d03cd921e0e7680255488583bf6"

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

cask "symdesk-app" do
  version "0.12.2"
  sha256 "0ab8f6d8d5d9e3de4163f53314dd78ef5db96fa0a4feb76ef9da31a169ed5fb6"

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

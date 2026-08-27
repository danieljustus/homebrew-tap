cask "symdesk-app" do
  version "0.10.1"
  sha256 "cd210a17b7e86bc11457ed15fc77ac3bff4d182271e7ce36f2670d76af43846b"

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

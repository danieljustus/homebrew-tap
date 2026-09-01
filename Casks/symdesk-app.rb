cask "symdesk-app" do
  version "0.11.1"
  sha256 "ad37ee6c6552cd3f60c01cd834998be4906a5119a9b1156faabf1fcd6d816680"

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

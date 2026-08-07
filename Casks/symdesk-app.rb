cask "symdesk-app" do
  version "0.8.0"
  sha256 "1a7897b46d332eb0f7ef35876c751125d843d577729df7f77a682e139c1e128e"

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

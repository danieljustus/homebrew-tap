cask "symcockpit" do
  version "${VERSION}"
  sha256 "${DMG_SHA256}"

  url "https://github.com/danieljustus/symaira-cockpit/releases/download/v\#{version}/Symaira-Cockpit-\#{version}.dmg"
  name "Symaira Cockpit"
  desc "This machine: thermals, power, GUI automation and port/MCP inventory"
  homepage "https://github.com/danieljustus/symaira-cockpit"

  livecheck do
    url "https://github.com/danieljustus/symaira-cockpit/releases/latest"
    strategy :header_match
    regex(/Symaira-Cockpit-(\d+(?:\.\d+)*)\.dmg/i)
  end

  depends_on macos: :sonoma

  app "Symaira Cockpit.app"

  zap trash: [
    "~/Library/Caches/com.symaira.cockpit",
    "~/Library/WebKit/com.symaira.cockpit",
  ]
end

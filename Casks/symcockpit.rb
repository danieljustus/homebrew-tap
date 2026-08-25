cask "symcockpit" do
  version "0.3.0"
  sha256 "76e81a98d68f601d70983f90658bffb4c2f94744edf75e49ad47f60352ffd38e"

  url "https://github.com/danieljustus/symaira-cockpit/releases/download/v\#{version}/Symaira-Cockpit-\#{version}-macos.dmg"
  name "Symaira Cockpit"
  desc "This machine: thermals, power, GUI automation and port/MCP inventory"
  homepage "https://github.com/danieljustus/symaira-cockpit"

  livecheck do
    url "https://github.com/danieljustus/symaira-cockpit/releases/latest"
    strategy :header_match
    regex(/Symaira-Cockpit-(\d+(?:\.\d+)*)-macos\.dmg/i)
  end

  depends_on macos: :sonoma

  app "Symaira Cockpit.app"

  zap trash: [
    "~/Library/Caches/com.symaira.cockpit",
    "~/Library/WebKit/com.symaira.cockpit",
  ]
end

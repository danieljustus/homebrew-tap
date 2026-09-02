cask "symcockpit" do
  version "0.5.2"
  sha256 "82ac5c660d25e33fb482b4df79bc8859deb89ecce05babdbb71ebdb6889354cb"

  url "https://github.com/danieljustus/symaira-cockpit/releases/download/v#{version}/Symaira-Cockpit-#{version}-macos.dmg"
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

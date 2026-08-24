cask "symcockpit" do
  version "0.2.0"
  sha256 "bf4f5fd1daec2c17689b52980f9a69d8119227918d21e12c213c86fcc7aa475a"

  url "https://github.com/danieljustus/symaira-cockpit/releases/download/v#{version}/Symaira-Cockpit-#{version}.dmg"
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

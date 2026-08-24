cask "symcockpit" do
  version "0.2.1"
  sha256 "bda2076e50bbd6e4912d5ae682de14bf08ced00d85311111127de47fd8c63b1d"

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

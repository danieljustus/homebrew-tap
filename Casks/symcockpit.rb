cask "symcockpit" do
  version "0.6.0"
  sha256 "58cd83ff39b9e6eabf4d6ae05c663d3b3e02a48edee59964c9a3c666395c97f4"

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

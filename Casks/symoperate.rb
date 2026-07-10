cask "symoperate" do
  version "0.2.4"
  sha256 "1751e97731d3b762d2ba412b4de2753f2f4e287df5ff3f4e95b60ba7def4efd8"

  url "https://github.com/danieljustus/symaira-operate/releases/download/v#{version}/symoperate.dmg"
  name "Symoperate"
  desc "Native desktop-automation MCP server"
  homepage "https://github.com/danieljustus/symaira-operate"

  depends_on macos: :sequoia

  binary "symoperate"

  zap trash: [
    "~/Library/Application Support/symoperate",
    "~/Library/Caches/com.symaira.operate",
    "~/Library/Preferences/com.symaira.operate.plist",
  ]
end

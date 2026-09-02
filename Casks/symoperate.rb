cask "symoperate" do
  version "0.6.1"
  sha256 "4f0e02406728b3cef481a96019849cb2ad4b68c1f2d61b153b6387b11a1cdc0d"

  url "https://github.com/danieljustus/symaira-operate/releases/download/v#{version}/symoperate.dmg"
  name "Symaira Operate"
  desc "Native macOS desktop-automation MCP server"
  homepage "https://github.com/danieljustus/symaira-operate"

  depends_on macos: :sequoia

  disable! date: "2026-08-24", because: "absorbed into symaira-cockpit (symcockpit)"

  binary "symoperate"

  zap trash: [
    "~/Library/Application Support/symoperate",
    "~/Library/Preferences/com.symaira.operate.plist",
    "~/Library/Caches/com.symaira.operate",
  ]
end

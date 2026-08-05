cask "symoperate" do
  version "0.5.0"
  sha256 "9a2f229d260c27fd63a906956eb0ec36553c4a9e2a22fa6a6cd32c8d5436abfd"

  url "https://github.com/danieljustus/symaira-operate/releases/download/v#{version}/symoperate.dmg"
  name "Symoperate"
  desc "Native macOS desktop-automation MCP server"
  homepage "https://github.com/danieljustus/symaira-operate"

  depends_on macos: :sequoia

  binary "symoperate"

  zap trash: [
    "~/Library/Application Support/symoperate",
    "~/Library/Preferences/com.symaira.operate.plist",
    "~/Library/Caches/com.symaira.operate",
  ]
end

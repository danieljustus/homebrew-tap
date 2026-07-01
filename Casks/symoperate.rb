cask "symoperate" do
  version "0.2.1"
  sha256 "60ddc62cc29aff66353c27ac8108e278bab4689d9c34f779601a9fa667decfc7"

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

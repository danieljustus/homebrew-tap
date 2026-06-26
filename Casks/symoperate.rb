cask "symoperate" do
  version "0.2.1"
  sha256 :no_check

  url "https://github.com/danieljustus/symaira-operate/releases/download/v#{version}/symoperate.dmg"
  name "Symoperate"
  desc "Native macOS desktop-automation MCP server"
  homepage "https://github.com/danieljustus/symaira-operate"

  livecheck do
    url "https://github.com/danieljustus/symaira-operate/releases/latest"
    strategy :header_match
    regex(/symoperate-(\d+(?:\.\d+)*)\.dmg/i)
  end

  depends_on macos: :sequoia

  binary "symoperate"

  zap trash: [
    "~/Library/Application Support/symoperate",
    "~/Library/Preferences/com.symaira.operate.plist",
    "~/Library/Caches/com.symaira.operate",
  ]
end

cask "symoperate" do
  version "0.6.0"
  sha256 "a6cecfb4d02c73ccc71439d7481ba0d5e53ad27d39891cbf6fa3c93c46f0523c"

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

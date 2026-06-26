cask "symtune" do
  version "0.1.3"
  sha256 "95f9f874471c76650ad27fbb08bab260ed26cb93d9e7963fbb62b357b6726f23"

  url "https://github.com/danieljustus/symaira-tune/releases/download/v#{version}/symtune-#{version}.dmg"
  name "Symtune"
  desc "Native macOS hardware tuning CLI and MCP server — brightness, fans, battery"
  homepage "https://github.com/danieljustus/symaira-tune"

  livecheck do
    url "https://github.com/danieljustus/symaira-tune/releases/latest"
    strategy :header_match
    regex(/symtune-(\d+(?:\.\d+)*)\.dmg/i)
  end

  depends_on macos: :sequoia

  binary "symtune"

  zap trash: [
    "~/Library/Application Support/symtune",
    "~/Library/Preferences/com.symaira.tune.plist",
    "~/Library/Caches/com.symaira.tune",
  ]
end

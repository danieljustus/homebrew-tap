cask "symbrain" do
  version "0.9.0"
  sha256 "072e85e6f8c4c95e0a7dabbbd12134d924d0566359a84ba6afd8ef2c93d04a78"

  url "https://github.com/danieljustus/symaira-brain/releases/download/v#{version}/Symaira-Brain-#{version}-macos.dmg"
  name "Symaira Brain"
  desc "Portable agent-context layer: one MCP gateway multiplexing vault, memory, and skills for AI harnesses"
  homepage "https://github.com/danieljustus/symaira-brain"

  livecheck do
    url "https://github.com/danieljustus/symaira-brain/releases/latest"
    strategy :header_match
    regex(/Symaira-Brain-(\d+(?:\.\d+)*)-macos\.dmg/i)
  end

  depends_on macos: :sonoma

  app "Symaira Brain.app"

  zap trash: [
    "~/Library/Application Support/Symaira Brain",
    "~/Library/Preferences/com.symaira.brain.plist",
    "~/Library/Caches/com.symaira.brain",
  ]
end

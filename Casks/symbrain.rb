cask "symbrain" do
  version "0.16.1"
  sha256 "70338b1a3c33cac3718c071a5ddc25210c6f7650be7e2a01871c53eb03139278"

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

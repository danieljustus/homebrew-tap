cask "symbrain" do
  version "0.14.0"
  sha256 "53bb983304cfd926ad88312e0030f1fd2598e6716e5902883bab99ac202452db"

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

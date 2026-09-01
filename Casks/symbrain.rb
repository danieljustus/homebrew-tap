cask "symbrain" do
  version "0.10.0"
  sha256 "b65684fc2be8a4d9fb59f0cfcdfc4e61547082133ff3c13f100f0f4f731baac6"

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

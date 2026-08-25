cask "symbrain" do
  version "0.7.2"
  sha256 "ba2855eb94fb30b5b41c12b99e8fac2b60d2f459058bcdd43aa15e32a5540fcf"

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

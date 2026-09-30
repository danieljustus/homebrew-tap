# frozen_string_literal: true

cask "symbrain" do
  version "0.12.0"
  sha256 "462b96413f03efdd4f34c728342cb1ca818c45cf442cb3ab163b3ee84f3c9bcf"

  url "https://github.com/danieljustus/symaira-brain/releases/download/v#{version}/Symaira-Brain-#{version}-macos.dmg"
  name "Symaira Brain"
  desc "Portable agent context with an MCP gateway for vault, memory, and skills"
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
    "~/Library/Caches/com.symaira.brain",
    "~/Library/Preferences/com.symaira.brain.plist",
  ]
end

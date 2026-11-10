# frozen_string_literal: true

cask "symcockpit" do
  version "0.10.1"
  sha256 "109d99d1dbe4027e6f23005cec5f933d038987d8cb93496ab8fd6c26c74fbd2b"

  url "https://github.com/danieljustus/symaira-cockpit/releases/download/v#{version}/Symaira-Cockpit-#{version}-macos.dmg"
  name "Symaira Cockpit"
  desc "This machine: thermals, power, display and system tuning"
  homepage "https://github.com/danieljustus/symaira-cockpit"

  livecheck do
    url "https://github.com/danieljustus/symaira-cockpit/releases/latest"
    strategy :header_match
    regex(/Symaira-Cockpit-(\d+(?:\.\d+)*)-macos\.dmg/i)
  end

  depends_on macos: :tahoe

  app "Symaira Cockpit.app"

  zap trash: [
    "~/Library/Caches/com.symaira.cockpit",
    "~/Library/WebKit/com.symaira.cockpit",
  ]
end

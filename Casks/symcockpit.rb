# frozen_string_literal: true

cask "symcockpit" do
  version "0.11.0"
  sha256 "88bb236f0a4b52dc2edcf9ef5ba150beec20b84bbb088bfa1af0ed9e7ab93fde"

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

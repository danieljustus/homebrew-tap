cask "symhub" do
  version "0.2.0"
  sha256 "b94f23d182a3763fbfffb3bef114aa7b8e12e026e4d415fd5647d5ae62150102"

  url "https://github.com/danieljustus/symaira-hub/releases/download/v#{version}/SymairaHub-#{version}.dmg"
  name "Symaira Hub"
  desc "Native macOS control center for the Symaira developer tools"
  homepage "https://github.com/danieljustus/symaira-hub"

  livecheck do
    url "https://github.com/danieljustus/symaira-hub/releases/latest"
    strategy :header_match
    regex(/SymairaHub-(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: :sonoma

  app "SymairaHub.app"

  zap trash: [
    "~/Library/Application Support/dev.symaira.SymairaHub",
    "~/Library/Preferences/dev.symaira.SymairaHub.plist",
    "~/Library/Caches/dev.symaira.SymairaHub",
  ]
end

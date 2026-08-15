cask "symhub" do
  version "0.3.0"
  sha256 "df3be26978c6e09ffeac70d7a9a3de19d53e5ae31d92f2bc13b6009c36c68c2c"

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

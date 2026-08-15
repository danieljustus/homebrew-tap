cask "symhub" do
  version "0.4.0"
  sha256 "50db06d7cedcb7e51cf29e84bb4932a69d58fa0c9ddef13acdd38ebd27ffa499"

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

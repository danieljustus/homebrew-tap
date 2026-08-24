cask "symhub" do
  version "0.4.0"
  sha256 "50db06d7cedcb7e51cf29e84bb4932a69d58fa0c9ddef13acdd38ebd27ffa499"

  url "https://github.com/danieljustus/symaira-hub/releases/download/v#{version}/SymairaHub-#{version}.dmg"
  name "Symaira Hub"
  desc "Native macOS control center for the Symaira developer tools"
  homepage "https://github.com/danieljustus/symaira-hub"

  depends_on macos: :sonoma

  disable! date: "2026-08-24", because: "the hub app was discontinued; SymDesk is the human shell"

  app "SymairaHub.app"

  zap trash: [
    "~/Library/Application Support/dev.symaira.SymairaHub",
    "~/Library/Preferences/dev.symaira.SymairaHub.plist",
    "~/Library/Caches/dev.symaira.SymairaHub",
  ]
end

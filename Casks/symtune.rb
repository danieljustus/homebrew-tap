cask "symtune" do
  version "0.8.0"
  sha256 "58ba45974792c9125b39c087bd3828c2cd7eaa2e2139966037d58edc65e99dff"

  url "https://github.com/danieljustus/symaira-tune/releases/download/v#{version}/symtune-#{version}.dmg"
  name "Symaira Tune"
  desc "Native macOS menu-bar controls for thermals, brightness, and power"
  homepage "https://github.com/danieljustus/symaira-tune"

  depends_on macos: :sonoma

  app "SymairaTune.app"
  binary "symtune"

  zap trash: [
    "~/.config/symtune",
    "~/.cache/symtune",
    "~/.local/share/symtune",
  ]
end

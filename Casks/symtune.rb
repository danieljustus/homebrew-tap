cask "symtune" do
  version "0.9.3"
  sha256 "4622c8ec97353f93e2dbbd75f703d33cc8ab48a88a7250f9a4c753424d5ac771"

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

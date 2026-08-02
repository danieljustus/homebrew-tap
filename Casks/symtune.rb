cask "symtune" do
  version "0.8.1"
  sha256 "6f227cbf1a0f408ca46dd3e422898524913ef078f2d37bded5a2cc5653c0f9f7"

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

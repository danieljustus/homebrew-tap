cask "symtune" do
  version "0.9.1"
  sha256 "9bcf0347e288b43445e9f7788b1e4971252c5a72360d2302f2bdccd78fecb7d2"

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

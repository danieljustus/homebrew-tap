cask "symtune" do
  version "0.4.0"
  sha256 "fa81510c17d6bf726c95ca3f048b0eff14a6ac7efabd556d033dbc4eb90ee0fc"

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

cask "symterminal" do
  version "0.3.0"
  sha256 "4244de635a0c15ca420e6dda23f7034cb107d481dbd8848504842b53d0ea4759"

  url "https://github.com/danieljustus/symaira-terminal/releases/download/v#{version}/SymairaTerminal-#{version}.dmg"
  name "Symaira Terminal"
  desc "Native macOS terminal built for the Human-AI era"
  homepage "https://github.com/danieljustus/symaira-terminal"

  livecheck do
    url "https://github.com/danieljustus/symaira-terminal/releases/latest"
    strategy :header_match
    regex(/SymairaTerminal-(\d+(?:\.\d+)*)\.dmg/i)
  end

  depends_on macos: :sonoma

  app "SymairaTerminal.app"

  zap trash: [
    "~/Library/Application Support/SymairaTerminal",
    "~/Library/Preferences/com.symaira.terminal.plist",
    "~/Library/Caches/com.symaira.terminal",
  ]
end

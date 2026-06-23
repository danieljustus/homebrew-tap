cask "symterminal" do
  version "0.8.0"
  sha256 "7673914f7d81a33b47c5f9fe55a4f1176c887572bf11ffc6fc483403b8b0208b"

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

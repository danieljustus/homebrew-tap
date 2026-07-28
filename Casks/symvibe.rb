cask "symvibe" do
  version "0.7.0"
  sha256 "f35b1a01096eddcf7eeea48e51e32ead47d0723e12f0379967bfe6b90b97d215"

  url "https://github.com/danieljustus/symaira-vibecoder/releases/download/v#{version}/Symvibe-#{version}.dmg"
  name "Symvibe"
  desc "Graphical Vibe-Coding Baukasten that drives opencode"
  homepage "https://github.com/danieljustus/symaira-vibecoder"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{/Symvibe-(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :sonoma"

  app "Symvibe.app"

  zap trash: [
    "~/Library/Application Support/dev.symaira.Symvibe",
    "~/Library/Preferences/dev.symaira.Symvibe.plist",
    "~/Library/Caches/dev.symaira.Symvibe",
  ]
end

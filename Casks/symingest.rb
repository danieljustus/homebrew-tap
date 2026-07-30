cask "symingest" do
  version "0.10.2"
  sha256 "e4ae4d60e7aba8d1b26706d09dbf76b30997817401c1889793129b8802126a86"

  url "https://github.com/danieljustus/symaira-ingest/releases/download/v#{version}/Symingest.dmg",
      verified: "github.com/danieljustus/symaira-ingest/"
  name "Symingest"
  desc "Document ingestion + OCR pipeline for the Symaira ecosystem"
  homepage "https://github.com/danieljustus/symaira-ingest"

  depends_on macos: ">= :ventura"

  app "Symingest.app"

  zap trash: [
    "~/Library/Application Support/Symingest",
    "~/Library/Preferences/dev.symaira.symingest.plist",
    "~/Library/Logs/Symingest",
  ]
end

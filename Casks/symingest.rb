cask "symingest" do
  version "0.10.4"
  sha256 "1329b90ccbc3e1a8c98548e6fae91c4ef4348b49a3133c7a9398e8f187aaf896"

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

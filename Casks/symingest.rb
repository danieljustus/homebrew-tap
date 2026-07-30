cask "symingest" do
  version "0.10.1"
  sha256 "0a57b701c850f404275fbe668f53e2c06f6106d4cae599aef16ec70021431100"

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

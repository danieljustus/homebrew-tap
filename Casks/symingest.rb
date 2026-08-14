cask "symingest" do
  version "0.12.0"
  sha256 "a9661c68c69a9248182e778512777474575cda93745450eb0a337c87c2c659d7"

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

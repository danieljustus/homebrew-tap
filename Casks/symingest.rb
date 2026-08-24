cask "symingest" do
  version "0.12.1"
  sha256 "62c010a849e87027c90070e7d058cb1106e0a6edb706e3855b3128e14589e421"

  url "https://github.com/danieljustus/symaira-ingest/releases/download/v#{version}/Symingest.dmg",
      verified: "github.com/danieljustus/symaira-ingest/"
  name "Symingest"
  desc "Document ingestion + OCR pipeline for the Symaira ecosystem"
  homepage "https://github.com/danieljustus/symaira-ingest"

  depends_on macos: ">= :ventura"

  disable! date: "2026-08-24", because: "absorbed into symaira-desktop (SymDesk)"

  app "Symingest.app"

  zap trash: [
    "~/Library/Application Support/Symingest",
    "~/Library/Preferences/dev.symaira.symingest.plist",
    "~/Library/Logs/Symingest",
  ]
end

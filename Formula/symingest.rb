# typed: false
# frozen_string_literal: true

class Symingest < Formula
  desc "Document ingestion + OCR core for the Symaira ecosystem"
  homepage "https://github.com/danieljustus/symaira-ingest"
  url "https://github.com/danieljustus/symaira-ingest/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ffd5a323eb1f857c45ef1a2aae2915b1bb102e877e8b257f065ac7336be48cdc"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "0"
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/symingest"
  end

  test do
    system "#{bin}/symingest", "--help"
  end
end

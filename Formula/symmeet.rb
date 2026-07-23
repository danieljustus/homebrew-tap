# typed: false
# frozen_string_literal: true

class Symmeet < Formula
  desc "Local-first, standalone meeting-artifact tool"
  homepage "https://github.com/danieljustus/symaira-meet"
  url "https://github.com/danieljustus/symaira-meet/releases/download/v0.1.0/symmeet_v0.1.0_darwin_arm64.tar.gz"
  version "0.1.0"
  sha256 "a1aa86f5a5f4c2f288bf2909f68268e998b53b0be28c394398bdea02f20a59e3"
  license "Apache-2.0"

  depends_on macos: :sequoia

  def install
    bin.install "symmeet"
  end

  test do
    system "#{bin}/symmeet", "version", "--json"
  end
end

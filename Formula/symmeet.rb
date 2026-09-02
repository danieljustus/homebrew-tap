# typed: false
# frozen_string_literal: true

class Symmeet < Formula
  desc "Local-first, standalone meeting-artifact tool"
  homepage "https://github.com/danieljustus/symaira-meet"
  url "https://github.com/danieljustus/symaira-meet/releases/download/v0.3.1/symmeet_v0.3.1_darwin_arm64.tar.gz"
  sha256 "1104fef33e95dc0345c7137141566b21562174e1c7b81fcf7a51152a5b29aa2d"
  license "Apache-2.0"

  depends_on macos: :sequoia

  disable! date: "2026-08-24", because: "absorbed into symaira-desktop (symdesk)"

  def install
    bin.install "symmeet"
  end

  test do
    system "#{bin}/symmeet", "version", "--json"
  end
end

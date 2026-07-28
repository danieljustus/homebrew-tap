# typed: false
# frozen_string_literal: true

class Symmeet < Formula
  desc "Local-first, standalone meeting-artifact tool"
  homepage "https://github.com/danieljustus/symaira-meet"
  url "https://github.com/danieljustus/symaira-meet/releases/download/v0.2.0/symmeet_v0.2.0_darwin_arm64.tar.gz"
  version "0.2.0"
  sha256 "e8a73fd0b6499f93373cf35a60bd9d3c05b9d39472757dd84f6a7d5b028f6afd"
  license "Apache-2.0"

  depends_on macos: :sequoia

  def install
    bin.install "symmeet"
  end

  test do
    system "#{bin}/symmeet", "version", "--json"
  end
end

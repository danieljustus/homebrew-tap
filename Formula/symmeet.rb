# typed: false
# frozen_string_literal: true

class Symmeet < Formula
  desc "Local-first, standalone meeting-artifact tool"
  homepage "https://github.com/danieljustus/symaira-meet"
  url "https://github.com/danieljustus/symaira-meet/releases/download/v0.3.0/symmeet_v0.3.0_darwin_arm64.tar.gz"
  version "0.3.0"
  sha256 "dda6660b5409aff1a578c7b68517f4ce4f32b0f47f17d427bfc06e6479984674"
  license "Apache-2.0"

  depends_on macos: :sequoia

  def install
    bin.install "symmeet"
  end

  test do
    system "#{bin}/symmeet", "version", "--json"
  end
end

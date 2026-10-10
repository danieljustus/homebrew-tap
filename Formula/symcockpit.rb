# typed: false
# frozen_string_literal: true

class Symcockpit < Formula
  desc "This machine: thermals, power, display and system tuning"
  homepage "https://github.com/danieljustus/symaira-cockpit"
  url "https://github.com/danieljustus/symaira-cockpit/releases/download/v0.8.1/symcockpit_0.8.1_darwin_universal.tar.gz"
  sha256 "b5b3007ecb7ef88312115d2c646fe75054fc9f0061e905a7c89b1365f4228bb0"
  license "Apache-2.0"

  # One universal binary rather than per-arch archives: symcockpit is
  # macOS-only (AppKit/IOKit/Accessibility/ScreenCaptureKit), so there is no
  # Linux leg to split on, and `swift build --arch arm64 --arch x86_64`
  # produces a single artifact for both Macs.
  depends_on macos: :tahoe

  def install
    bin.install "symcockpit"
  end

  def caveats
    <<~EOS
      symcockpit provides the tune command tree. Operate and Scope are
      optional modules in Symaira Brain; legacy dispatcher commands are removed.
      The menu bar app
      is distributed separately: brew install --cask danieljustus/tap/symcockpit
    EOS
  end

  test do
    assert_match "symcockpit #{version}", shell_output("#{bin}/symcockpit version")
  end
end

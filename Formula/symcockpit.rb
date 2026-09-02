# typed: false
# frozen_string_literal: true

class Symcockpit < Formula
  desc "This machine: thermals, power, GUI automation and port/MCP inventory"
  homepage "https://github.com/danieljustus/symaira-cockpit"
  license "Apache-2.0"

  # One universal binary rather than per-arch archives: symcockpit is
  # macOS-only (AppKit/IOKit/Accessibility/ScreenCaptureKit), so there is no
  # Linux leg to split on, and `swift build --arch arm64 --arch x86_64`
  # produces a single artifact for both Macs.
  depends_on macos: :sonoma

  url "https://github.com/danieljustus/symaira-cockpit/releases/download/v0.5.1/symcockpit_0.5.1_darwin_universal.tar.gz"
  sha256 "39431131ce145b18dc09ed53abf64deac23ec4432d06a08b651d3d7bde9426c1"

  def install
    bin.install "symcockpit"
  end

  def caveats
    <<~EOS
      symcockpit replaces symtune, symoperate and symscope:

        symcockpit tune <command>       (was: symtune)
        symcockpit operate <command>    (was: symoperate)
        symcockpit scope <command>      (was: symscope)

      operate needs Accessibility and Screen Recording permissions; grant them
      in System Settings > Privacy & Security on first use. The menu bar app
      is distributed separately: brew install --cask danieljustus/tap/symcockpit
    EOS
  end

  test do
    assert_match "symcockpit #{version}", shell_output("#{bin}/symcockpit version")
  end
end

# typed: false
# frozen_string_literal: true

class Symcockpit < Formula
  desc "This machine: thermals, power, GUI automation and port/MCP inventory"
  homepage "https://github.com/danieljustus/symaira-cockpit"
  version "0.3.0"
  license "Apache-2.0"

  # One universal binary rather than per-arch archives: symcockpit is
  # macOS-only (AppKit/IOKit/Accessibility/ScreenCaptureKit), so there is no
  # Linux leg to split on, and `swift build --arch arm64 --arch x86_64`
  # produces a single artifact for both Macs.
  depends_on macos: :sonoma

  url "https://github.com/danieljustus/symaira-cockpit/releases/download/v\#{version}/symcockpit_\#{version}_darwin_universal.tar.gz"
  sha256 "847ee7aa10e5cb45321e39411398e3070a12470d9ffefab6b30a32a38a494f28"

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
    assert_match "symcockpit \#{version}", shell_output("\#{bin}/symcockpit version")
  end
end

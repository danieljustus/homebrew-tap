# typed: false
# frozen_string_literal: true

class Symcockpit < Formula
  desc "This machine: thermals, power, GUI automation and port/MCP inventory"
  homepage "https://github.com/danieljustus/symaira-cockpit"
  version "0.1.0"
  license "Apache-2.0"

  # One universal binary rather than per-arch archives: symcockpit is
  # macOS-only (AppKit/IOKit/Accessibility/ScreenCaptureKit), so there is no
  # Linux leg to split on, and `swift build --arch arm64 --arch x86_64`
  # produces a single artifact for both Macs.
  depends_on macos: :sonoma

  url "https://github.com/danieljustus/symaira-cockpit/releases/download/v0.1.0/symcockpit_0.1.0_darwin_universal.tar.gz"
  sha256 "4fc89e8bd0ae950b758e2ea3a4bd179e41d4be134a04f70753b44d75146e7f02"

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
      in System Settings > Privacy & Security on first use.
    EOS
  end

  test do
    assert_match "symcockpit #{version}", shell_output("#{bin}/symcockpit version")
  end
end

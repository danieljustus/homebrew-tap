# typed: false
# frozen_string_literal: true

class Symcockpit < Formula
  desc "macOS hardware and system tuning: thermals, power, display, brightness"
  homepage "https://github.com/danieljustus/symaira-cockpit"
  version "0.6.2"
  license "Apache-2.0"

  # One universal binary rather than per-arch archives: symcockpit is
  # macOS-only (AppKit/IOKit/Accessibility/ScreenCaptureKit), so there is no
  # Linux leg to split on, and `swift build --arch arm64 --arch x86_64`
  # produces a single artifact for both Macs.
  depends_on macos: :sonoma

  url "https://github.com/danieljustus/symaira-cockpit/releases/download/v#{version}/symcockpit_#{version}_darwin_universal.tar.gz"
  sha256 "da58e74be5a249d82193eacae814c8ee5aeae121d85c7596828c5fc8a4f75344"

  def install
    bin.install "symcockpit"
  end

  def caveats
    <<~EOS
      symcockpit provides the tune command tree (thermals, power, display,
      brightness):

        symcockpit tune <command>
        symcockpit <command>        (most tune commands also work unprefixed)

      operate and scope moved to Symaira Brain as optional modules; install
      them from a Brain checkout:

        symbrain setup --from-source <brain-checkout> --modules operate,scope

      The menu bar app is distributed separately:
      brew install --cask danieljustus/tap/symcockpit
    EOS
  end

  test do
    assert_match "symcockpit #{version}", shell_output("#{bin}/symcockpit version")
  end
end

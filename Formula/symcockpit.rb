# typed: false
# frozen_string_literal: true

class Symcockpit < Formula
  desc "This machine: thermals, power, display and system tuning"
  homepage "https://github.com/danieljustus/symaira-cockpit"
  url "https://github.com/danieljustus/symaira-cockpit/releases/download/v0.13.1/symcockpit_0.13.1_darwin_arm64.tar.gz"
  sha256 "8894c081614db9eb4158136f57ea4537d8b5eff761c8e5530e9b1c078e417723"
  license "Apache-2.0"

  # The command line only. The menu bar app and its Finder and Quick Look
  # extensions come with the cask, which links this same binary. Homebrew has
  # no way to declare that conflict (`conflicts_with cask:` in a formula is
  # ignored and crashes `brew style`; a cask accepts only `cask:` keys), so a
  # second install fails at the link step on the existing `symcockpit`.

  # Apple Silicon only: Intel is not a supported platform.
  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    bin.install "symcockpit"
  end

  def caveats
    <<~EOS
      This formula installs the command line only. The menu bar app is the
      cask, which links the same `symcockpit` command, so install either one:
        brew install --cask danieljustus/tap/symcockpit
      Operate and Scope are optional modules in Symaira Brain.
    EOS
  end

  test do
    assert_match "symcockpit #{version}", shell_output("#{bin}/symcockpit version --no-update-check")
  end
end

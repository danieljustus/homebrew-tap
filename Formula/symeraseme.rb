# typed: false
# frozen_string_literal: true

class Symeraseme < Formula
  desc "Automated GDPR/CCPA data broker removal CLI"
  homepage "https://github.com/danieljustus/symaira-eraseme"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.19.1/symeraseme_0.19.1_darwin_arm64.tar.gz"
      sha256 "766d6da3f340852e7d3e5e38a3f9e4805c0afe8accb4daa67261c6d0d3af815e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.19.1/symeraseme_0.19.1_linux_arm64.tar.gz"
      sha256 "e6e46261875a211a4b415756127bea503b76fd7421efbb3c0bbaabea549ccd71"
    else
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.19.1/symeraseme_0.19.1_linux_amd64.tar.gz"
      sha256 "fea6f2c417c5fa753f6181b2051247e205d6bf932135b379e8b79e36ac17a496"
    end
  end

  def install
    bin.install "symeraseme"
  end

  test do
    system bin/"symeraseme", "version"
  end
end

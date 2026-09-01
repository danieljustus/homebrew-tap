# typed: false
# frozen_string_literal: true

class Symeraseme < Formula
  desc "Automated GDPR/CCPA data broker removal CLI"
  homepage "https://github.com/danieljustus/symaira-eraseme"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.12.0/symeraseme_0.12.0_darwin_arm64.tar.gz"
      sha256 "100692583b135e6c14b8159ed96c45bcf6088db10a23400f198b0059dcaaeb36"
    else
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.12.0/symeraseme_0.12.0_darwin_amd64.tar.gz"
      sha256 "8e3656cbce2592f3c4fd5e37ea97f785c65359c951c5341edecdc9a644fa1aa1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.12.0/symeraseme_0.12.0_linux_arm64.tar.gz"
      sha256 "c229f6bb4ffb6f1694181fa7de1bf4ddcc8c555b7ff406b511dcd74c4c691620"
    else
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.12.0/symeraseme_0.12.0_linux_amd64.tar.gz"
      sha256 "9be339824d297fab0ec55eca05703a40c326271a6e4c2639abc71357515eb423"
    end
  end

  def install
    bin.install "symeraseme"
  end

  test do
    system "#{bin}/symeraseme", "version"
  end
end

# typed: false
# frozen_string_literal: true

class Symeraseme < Formula
  desc "Automated GDPR/CCPA data broker removal CLI"
  homepage "https://github.com/danieljustus/symaira-eraseme"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.18.0/symeraseme_0.18.0_darwin_arm64.tar.gz"
      sha256 "cef7e799a4ec5c3b12617c00181cd995638d7551a9c2851480b9807f8316ce5f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.18.0/symeraseme_0.18.0_linux_arm64.tar.gz"
      sha256 "b5c7014fdcc89ebe1269da594502b340360a0352f4c3a3698920a1c211ee3bde"
    else
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.18.0/symeraseme_0.18.0_linux_amd64.tar.gz"
      sha256 "0ad5b52f60bee79aba369f752e491f910706c01007ddccd19511d44152873621"
    end
  end

  def install
    bin.install "symeraseme"
  end

  test do
    system bin/"symeraseme", "version"
  end
end

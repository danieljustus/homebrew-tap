# typed: false
# frozen_string_literal: true

class Symeraseme < Formula
  desc "Automated GDPR/CCPA data broker removal CLI"
  homepage "https://github.com/danieljustus/symaira-eraseme"
  version "0.12.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.12.1/symeraseme_0.12.1_darwin_arm64.tar.gz"
      sha256 "7fa696829c9bf861ba902a65576d22013e4eeeb655150143975f961078dc906b"
    else
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.12.1/symeraseme_0.12.1_darwin_amd64.tar.gz"
      sha256 "3ff650cc1cab17e23f1c7264006b21b43d5e23a67ee6783daba84e39357869a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.12.1/symeraseme_0.12.1_linux_arm64.tar.gz"
      sha256 "02613a59bd88657c436ee8d748f33cc0910ec0cafb07cd238f3e1fd520e74dfd"
    else
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.12.1/symeraseme_0.12.1_linux_amd64.tar.gz"
      sha256 "f64bc2d8456f3e9b7e66763e4f90dc42b43c526df61593e228676a2663d43d15"
    end
  end

  def install
    bin.install "symeraseme"
  end

  test do
    system "#{bin}/symeraseme", "version"
  end
end

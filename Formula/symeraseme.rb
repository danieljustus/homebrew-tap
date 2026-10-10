# typed: false
# frozen_string_literal: true

class Symeraseme < Formula
  desc "Automated GDPR/CCPA data broker removal CLI"
  homepage "https://github.com/danieljustus/symaira-eraseme"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.14.1/symeraseme_0.14.1_darwin_arm64.tar.gz"
      sha256 "d7aa3f52ede034d7187a4a4d663d6a62e74e68f5cf0ce86e266d77b286b19316"
    else
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.14.1/symeraseme_0.14.1_darwin_amd64.tar.gz"
      sha256 "d3d67bfa8b78c2ee1605c80dd0c563726b7f837100c7b198141934f3248172d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.14.1/symeraseme_0.14.1_linux_arm64.tar.gz"
      sha256 "5a489ee7f75e25552271786eaf900af577a4235f2c71e4955071c1306506cd35"
    else
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.14.1/symeraseme_0.14.1_linux_amd64.tar.gz"
      sha256 "be449fd4ec53ecc830a5e46444d9273bca27c9c6ccc7418a432e6bd816553054"
    end
  end

  def install
    bin.install "symeraseme"
  end

  test do
    system bin/"symeraseme", "version"
  end
end

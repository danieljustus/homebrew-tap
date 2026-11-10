# typed: false
# frozen_string_literal: true

class Symeraseme < Formula
  desc "Automated GDPR/CCPA data broker removal CLI"
  homepage "https://github.com/danieljustus/symaira-eraseme"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.15.1/symeraseme_0.15.1_darwin_arm64.tar.gz"
      sha256 "2df0a154ecf18c18b4dd54ceee5fa9ad8b71db5678f43f933b164db1f0380efc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.15.1/symeraseme_0.15.1_linux_arm64.tar.gz"
      sha256 "dfef2a31af16f56195a0a014e254fdc5511ff8a2a9327dadd7dd9bf4b68aed67"
    else
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.15.1/symeraseme_0.15.1_linux_amd64.tar.gz"
      sha256 "d90a6a5a47c90330aedf548136c8e2c28ede312b8fe59ed6e406cb059bff089c"
    end
  end

  def install
    bin.install "symeraseme"
  end

  test do
    system bin/"symeraseme", "version"
  end
end

# typed: false
# frozen_string_literal: true

class Symeraseme < Formula
  desc "Automated GDPR/CCPA data broker removal CLI"
  homepage "https://github.com/danieljustus/symaira-eraseme"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.19.0/symeraseme_0.19.0_darwin_arm64.tar.gz"
      sha256 "b8ae4ee2a13618e839c735ff745183b0aa558dee1ae1ba0fb6dcaff5d943eb79"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.19.0/symeraseme_0.19.0_linux_arm64.tar.gz"
      sha256 "a1aaf59311effe40bcefec6a81928cafb94109ed59a317510cce5689669b0439"
    else
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.19.0/symeraseme_0.19.0_linux_amd64.tar.gz"
      sha256 "fbed5b0c8855513d5f425c43ff954121d817f36d76abf8b9c7db2d08ec478b24"
    end
  end

  def install
    bin.install "symeraseme"
  end

  test do
    system bin/"symeraseme", "version"
  end
end

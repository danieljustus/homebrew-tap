# typed: false
# frozen_string_literal: true

class Symeraseme < Formula
  desc "Automated GDPR/CCPA data broker removal CLI"
  homepage "https://github.com/danieljustus/symaira-eraseme"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.17.0/symeraseme_0.17.0_darwin_arm64.tar.gz"
      sha256 "3b36ef05981f103526f79d5142c71fa12b6bb4d91e70dc315e3ab89f0bdac72b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.17.0/symeraseme_0.17.0_linux_arm64.tar.gz"
      sha256 "e80ecea6d207b8e0d3726aae44141db9a893b4ab08fd2da546a24e3ac885d50e"
    else
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.17.0/symeraseme_0.17.0_linux_amd64.tar.gz"
      sha256 "58f41da4ebbb15b72b402f274d765ca86151dc5c66a55b6eb07415e5ddd299b7"
    end
  end

  def install
    bin.install "symeraseme"
  end

  test do
    system bin/"symeraseme", "version"
  end
end

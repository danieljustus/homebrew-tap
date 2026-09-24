# typed: strict
# frozen_string_literal: true

# Generated from the Rust release archive. Do not edit manually.
class Symfritz < Formula
  desc "CLI to administer, analyse, and control an AVM FRITZ!Box"
  homepage "https://github.com/danieljustus/symaira-fritz"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.9.0/symaira-fritz_0.9.0_darwin_amd64.tar.gz"
      sha256 "73ec6ae2773e3c717d05a379093c49dffd8e7e52c10dc4e3a72745216ca67fb3"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.9.0/symaira-fritz_0.9.0_darwin_arm64.tar.gz"
      sha256 "d3ee52f1097da051b864f57dad44e1d33cc185534b03fc9a224b0dd73d5deb0a"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.9.0/symaira-fritz_0.9.0_linux_amd64.tar.gz"
      sha256 "14c58686f07169550c1f73db8a3985b9235783ec5b7368239db9a1c7dbf6526e"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.9.0/symaira-fritz_0.9.0_linux_arm64.tar.gz"
      sha256 "9263bb8a3eb51ebdbee48c37b91d50ea6586b80bed2a32b68fcbde1220e35e40"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
  end

  test do
    system "#{bin}/symfritz", "version"
  end
end

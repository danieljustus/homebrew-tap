# typed: strict
# frozen_string_literal: true

# Generated from the Rust release archive. Do not edit manually.
class Symfritz < Formula
  desc "CLI to administer, analyse, and control an AVM FRITZ!Box"
  homepage "https://github.com/danieljustus/symaira-fritz"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.8.0/symaira-fritz_0.8.0_darwin_amd64.tar.gz"
      sha256 "45b63480424f3bdbd2614ae13c21950ea8d600775e955baa91a39403cbea6029"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.8.0/symaira-fritz_0.8.0_darwin_arm64.tar.gz"
      sha256 "faf5ff64ac62bc50eaed2885bc6835335e21b21eedcde3ebbfafc09b0e0709b7"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.8.0/symaira-fritz_0.8.0_linux_amd64.tar.gz"
      sha256 "0629df7d7d83440dcc4fc6d22bf184b95047bc6b542a9e3185c72374a4a10292"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.8.0/symaira-fritz_0.8.0_linux_arm64.tar.gz"
      sha256 "cace2380ea3f04a9e26d6d22b4f98830239ffbcabc341b20f136e47f43ae3a0e"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
  end

  test do
    system "#{bin}/symfritz", "version"
  end
end

# typed: strict
# frozen_string_literal: true

# Generated from the Rust release archive. Do not edit manually.
class Symfritz < Formula
  desc "CLI to administer, analyse, and control an AVM FRITZ!Box"
  homepage "https://github.com/danieljustus/symaira-fritz"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.11.1/symaira-fritz_0.11.1_darwin_amd64.tar.gz"
      sha256 "8751ce6abd560fccaf7935cfff6a99253324285c619c300dd437bbc73756874b"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.11.1/symaira-fritz_0.11.1_darwin_arm64.tar.gz"
      sha256 "5c234ec65a95b6cd9237f002da59d529e1d423d50ca2e7e2be371ed10f1cdee7"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.11.1/symaira-fritz_0.11.1_linux_amd64.tar.gz"
      sha256 "4d2da204c2031791ed889ebede031a68bd52594738e3b15bda61db7f61d5b7b3"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.11.1/symaira-fritz_0.11.1_linux_arm64.tar.gz"
      sha256 "1db14f576f43bc68ed8da7ace289b381dcd801ebdc7924f8b80fea0bfd64f9dd"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
  end

  test do
    system "#{bin}/symfritz", "version"
  end
end

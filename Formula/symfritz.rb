# typed: strict
# frozen_string_literal: true

# Generated from the Rust release archive. Do not edit manually.
class Symfritz < Formula
  desc "CLI to administer, analyse, and control an AVM FRITZ!Box"
  homepage "https://github.com/danieljustus/symaira-fritz"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.10.0/symaira-fritz_0.10.0_darwin_amd64.tar.gz"
      sha256 "5eb1cb2c5d6d54b711c5a3f12843df72027985e8013d38814f5c4e6972fcac77"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.10.0/symaira-fritz_0.10.0_darwin_arm64.tar.gz"
      sha256 "36fe22473ee50df41e3b3d02e46fcaaf483237ff1ac99a591f6d8f67b2298309"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.10.0/symaira-fritz_0.10.0_linux_amd64.tar.gz"
      sha256 "c94ebc3bf9d349c576e6c25af9e9fdf5c765e1ab91eacb55f8f94ca11871df72"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.10.0/symaira-fritz_0.10.0_linux_arm64.tar.gz"
      sha256 "a1b1d155ea5535181302eca124cfd1e78ff0ab9d174b2b663f7e5a8ab24f022f"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
  end

  test do
    system "#{bin}/symfritz", "version"
  end
end

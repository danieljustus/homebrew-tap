# typed: strict
# frozen_string_literal: true

# Generated from the Rust release archive. Do not edit manually.
class Symfritz < Formula
  desc "CLI to administer, analyse, and control an AVM FRITZ!Box"
  homepage "https://github.com/danieljustus/symaira-fritz"
  version "0.8.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.8.1/symaira-fritz_0.8.1_darwin_amd64.tar.gz"
      sha256 "5c7dfee82298777996adeb5e070b915164c59f1cbd0956fba1658b8997cf9bcc"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.8.1/symaira-fritz_0.8.1_darwin_arm64.tar.gz"
      sha256 "a98de1db91b753aecfa43eec9b77c2cbb096864a20bbeb132f3296b9a54726c0"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.8.1/symaira-fritz_0.8.1_linux_amd64.tar.gz"
      sha256 "3dcaae57e3aa75eb2db454dfece1a8fd0a4c3a36de9f2d0ccf02eda564a0a598"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.8.1/symaira-fritz_0.8.1_linux_arm64.tar.gz"
      sha256 "28ab757cf5ed7e753af1f79e0c122f07c5e7762e8a2779925c5b98c6c5694fa8"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
  end

  test do
    system "#{bin}/symfritz", "version"
  end
end

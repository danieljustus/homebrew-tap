# typed: strict
# frozen_string_literal: true

# Generated from the Rust release archive. Do not edit manually.
class Symfritz < Formula
  desc "CLI to administer, analyse, and control an AVM FRITZ!Box"
  homepage "https://github.com/danieljustus/symaira-fritz"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.11.2/symaira-fritz_0.11.2_darwin_arm64.tar.gz"
      sha256 "7a671d4f0e9efe90965c4678c9db76339818998819726c1fa4f870872cd51aa9"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.11.2/symaira-fritz_0.11.2_linux_amd64.tar.gz"
      sha256 "1865b0616893fa4b543e6fe27ad6410843fab3ec53fe0042673d48a99e033835"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.11.2/symaira-fritz_0.11.2_linux_arm64.tar.gz"
      sha256 "e37b287520e8489d2e9d676fe7d9555a8a4221a1bb09ba7e982dafba06f1105b"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
  end

  test do
    system "#{bin}/symfritz", "version"
  end
end

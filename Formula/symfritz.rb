# typed: strict
# frozen_string_literal: true

# Generated from the Rust release archive. Do not edit manually.
class Symfritz < Formula
  desc "CLI to administer, analyse, and control an AVM FRITZ!Box"
  homepage "https://github.com/danieljustus/symaira-fritz"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.11.3/symaira-fritz_0.11.3_darwin_arm64.tar.gz"
      sha256 "02de554bb49165206696958a9525e97d08222ecbfeddd9abb4b582e9ba3416cb"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.11.3/symaira-fritz_0.11.3_linux_amd64.tar.gz"
      sha256 "a7011c0122014097ae8a12e27e4db2e1892ab6b5c049676e904d9ae8b5c5f9ef"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.11.3/symaira-fritz_0.11.3_linux_arm64.tar.gz"
      sha256 "da147765126cc0fb5f161649e14fe1431650101dcf3a495d79c340054b1773a2"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
  end

  test do
    system "#{bin}/symfritz", "version"
  end
end

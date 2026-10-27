# typed: strict
# frozen_string_literal: true

# Generated from the Rust release archive. Do not edit manually.
class Symfritz < Formula
  desc "CLI to administer, analyse, and control an AVM FRITZ!Box"
  homepage "https://github.com/danieljustus/symaira-fritz"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.11.0/symaira-fritz_0.11.0_darwin_amd64.tar.gz"
      sha256 "ca7412f257d17ec9a18975a19dc114a25a765d1921c3286809a6099e42c771a5"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.11.0/symaira-fritz_0.11.0_darwin_arm64.tar.gz"
      sha256 "e4a6a8037b5b26be39b6f1fb55c7c2d8fd41abe9cbb7a26a7a5eec9cd50a4f32"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.11.0/symaira-fritz_0.11.0_linux_amd64.tar.gz"
      sha256 "391ad649f8c0db61ec93feff134b46989a8ff38ca9ec50d12b295b3039b38111"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.11.0/symaira-fritz_0.11.0_linux_arm64.tar.gz"
      sha256 "e26cf250bfb50089224a0738bf84f8dd6aed29947c1af8076167787d0a197fbf"

      define_method(:install) do
        bin.install "symfritz"
      end
    end
  end

  test do
    system "#{bin}/symfritz", "version"
  end
end

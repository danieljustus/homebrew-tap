# typed: false
# frozen_string_literal: true

class Symseek < Formula
  desc "Local-first, CGO-free document retrieval for AI agents"
  homepage "https://github.com/danieljustus/symaira-seek"
  version "2.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/danieljustus/symaira-seek/releases/download/v2.2.1/symaira-seek_2.2.1_darwin_amd64.tar.gz"
      sha256 "bfc8b99d08b620b368eb2dfa68e063a20d7391db6604f80fb8eb3890dbdbd60b"

      define_method(:install) do
        bin.install "symseek"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-seek/releases/download/v2.2.1/symaira-seek_2.2.1_darwin_arm64.tar.gz"
      sha256 "919827841bfe7ba6ecf37466ad71776114fb8eda32c4a1e7f561e56daf995efc"

      define_method(:install) do
        bin.install "symseek"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-seek/releases/download/v2.2.1/symaira-seek_2.2.1_linux_amd64.tar.gz"
      sha256 "7d218866a76e9d27f24192ce1a0a64c1cbc1e98d1d0d7c314efec80c6a776ed4"

      define_method(:install) do
        bin.install "symseek"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-seek/releases/download/v2.2.1/symaira-seek_2.2.1_linux_arm64.tar.gz"
      sha256 "7e60208cff5fcb67e7e4ffec240e3c8a143d36079cfbea5092c0b888110220ca"

      define_method(:install) do
        bin.install "symseek"
      end
    end
  end

  test do
    system "#{bin}/symseek", "version"
  end
end

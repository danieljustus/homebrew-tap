# typed: false
# frozen_string_literal: true

class Symfetch < Formula
  desc "AI-native web fetch engine for LLM agents"
  homepage "https://github.com/danieljustus/symaira-fetch"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/danieljustus/symaira-fetch/releases/download/v0.1.3/symaira-fetch_0.1.3_darwin_amd64.tar.gz"
      sha256 "c1af78b5003f332b14f08e2163fd708cf7c19b6ecdc9702f19980a1c0b468f62"
    end
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-fetch/releases/download/v0.1.3/symaira-fetch_0.1.3_darwin_arm64.tar.gz"
      sha256 "d9113113243e7f1eee2f0cc3e1df0cea0afe3b6863ad0c698ee4f512b51f5f1e"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-fetch/releases/download/v0.1.3/symaira-fetch_0.1.3_linux_amd64.tar.gz"
      sha256 "0eed8168f50cc05552bbb3d0e4f37150eff48c40d3f8d649f46437b6e04da8ac"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-fetch/releases/download/v0.1.3/symaira-fetch_0.1.3_linux_arm64.tar.gz"
      sha256 "1c7068e8942df4add64809bccd03a93dcd08e6c628eecea802e7c8185ef51658"
    end
  end

  def install
    bin.install "symfetch"
  end

  test do
    system "#{bin}/symfetch", "version"
  end
end

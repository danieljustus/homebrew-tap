# typed: false
# frozen_string_literal: true

class Symdesk < Formula
  desc "Local-first markdown vault workspace: CLI and MCP server"
  homepage "https://github.com/danieljustus/symaira-desktop"
  version "0.6.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/danieljustus/symaira-desktop/releases/download/v0.6.10/symaira-desktop_0.6.10_darwin_amd64.tar.gz"
      sha256 "03d89ef7be405deb44c793dd57b7730e872824c91165c660f3be502a8296ba0e"

      define_method(:install) do
        bin.install "symdesk"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-desktop/releases/download/v0.6.10/symaira-desktop_0.6.10_darwin_arm64.tar.gz"
      sha256 "1273a8c0f9813e6d9f33b18428f867abdabc19c33916c5f9c40437fbe37af07a"

      define_method(:install) do
        bin.install "symdesk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-desktop/releases/download/v0.6.10/symaira-desktop_0.6.10_linux_amd64.tar.gz"
      sha256 "63c9595caa73a2e00305133cbc816cf08440b1dd6b9846090d9adaf3f658abbb"
      define_method(:install) do
        bin.install "symdesk"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-desktop/releases/download/v0.6.10/symaira-desktop_0.6.10_linux_arm64.tar.gz"
      sha256 "b25e98562e0986d5d801c680a4bcef017d61ce77a7f4d6e333080ea76a536285"
      define_method(:install) do
        bin.install "symdesk"
      end
    end
  end

  test do
    system "#{bin}/symdesk", "version"
  end
end

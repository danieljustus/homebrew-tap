# typed: false
# frozen_string_literal: true

class Symdesk < Formula
  desc "Local-first markdown vault workspace: CLI and MCP server"
  homepage "https://github.com/danieljustus/symaira-desktop"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/danieljustus/symaira-desktop/releases/download/v0.5.0/symaira-desktop_0.5.0_darwin_amd64.tar.gz"
      sha256 "ed9c08ca9e92b817f20b12c09f1fe73d96e9cedb9cfd682299fc47eb44dc4c07"

      define_method(:install) do
        bin.install "symdesk"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-desktop/releases/download/v0.5.0/symaira-desktop_0.5.0_darwin_arm64.tar.gz"
      sha256 "8c67fae96bc10fef898b5c7c98e857ca565e83b5e6bb6750e73b320db271fcfa"

      define_method(:install) do
        bin.install "symdesk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-desktop/releases/download/v0.5.0/symaira-desktop_0.5.0_linux_amd64.tar.gz"
      sha256 "b39828cca61c263107492b071a02aac245298b0e1a27f7b1834e73e636295739"
      define_method(:install) do
        bin.install "symdesk"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-desktop/releases/download/v0.5.0/symaira-desktop_0.5.0_linux_arm64.tar.gz"
      sha256 "6ac16dae489b207bf3ca268bc84cc21dedc2f6795c7db7550d9b9f8d72e7fcbf"
      define_method(:install) do
        bin.install "symdesk"
      end
    end
  end

  test do
    system "#{bin}/symdesk", "version"
  end
end

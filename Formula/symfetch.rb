# typed: false
# frozen_string_literal: true

class Symfetch < Formula
  desc "AI-native web fetch engine for LLM agents"
  homepage "https://github.com/danieljustus/symaira-fetch"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/danieljustus/symaira-fetch/releases/download/v0.1.2/symaira-fetch_0.1.2_darwin_amd64.tar.gz"
      sha256 "2be55827d8ee973a4ec7e0830bb4d7bed2c45db0846a287d2276bbee146fd72c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-fetch/releases/download/v0.1.2/symaira-fetch_0.1.2_darwin_arm64.tar.gz"
      sha256 "92870cc6a2609f5d13dbc0be0156af6dbbbba29d054090e7581f7874e7f6499b"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-fetch/releases/download/v0.1.2/symaira-fetch_0.1.2_linux_amd64.tar.gz"
      sha256 "e94183cd8c21b22026a1266785362e6bb867323fecbab427967d5bfcb6ac4c52"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-fetch/releases/download/v0.1.2/symaira-fetch_0.1.2_linux_arm64.tar.gz"
      sha256 "343f84a911363fc3bb42cf92ca09a7461c5c291c22b0f440700d347e18607d9c"
    end
  end

  def install
    bin.install "symfetch"
  end

  test do
    system "#{bin}/symfetch", "version"
  end
end

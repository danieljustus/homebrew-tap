# typed: false
# frozen_string_literal: true

class Symeraseme < Formula
  desc "Automated GDPR/CCPA data broker removal CLI"
  homepage "https://github.com/danieljustus/symaira-eraseme"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.17.1/symeraseme_0.17.1_darwin_arm64.tar.gz"
      sha256 "65399da47b5cc45c885201ce083e69c60162d7570f160311c0da3e7f90294cbf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.17.1/symeraseme_0.17.1_linux_arm64.tar.gz"
      sha256 "39658c12ff16121c75332e9c268535bb43616624ad0f206c399e196b06fdf6b1"
    else
      url "https://github.com/danieljustus/symaira-eraseme/releases/download/v0.17.1/symeraseme_0.17.1_linux_amd64.tar.gz"
      sha256 "b89c7a3bc2cbd57c27d9a2f1d79eacb0df03c4da021bd404452bacd10537af28"
    end
  end

  def install
    bin.install "symeraseme"
  end

  test do
    system bin/"symeraseme", "version"
  end
end

# typed: strict
# frozen_string_literal: true

# Generated from the dual-binary release archive. Do not edit manually.
class Symfritz < Formula
  desc "CLI to administer, analyse, and control an AVM FRITZ!Box"
  homepage "https://github.com/danieljustus/symaira-fritz"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.7.0/symaira-fritz_0.7.0_darwin_amd64.tar.gz"
      sha256 "4144e064190fea7d410c2c35902f2b1b71b535f605d0a66f680f85d654682c52"

      define_method(:install) do
        bin.install "symfritz"
        bin.install "symfritz-go"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.7.0/symaira-fritz_0.7.0_darwin_arm64.tar.gz"
      sha256 "6196e049b2e64f9e8679c752b2c14ae4b57c89e701f41e754a2126cc83f59e9b"

      define_method(:install) do
        bin.install "symfritz"
        bin.install "symfritz-go"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.7.0/symaira-fritz_0.7.0_linux_amd64.tar.gz"
      sha256 "72300852db6e47fbd3b12723fcf3a866bef0bb2852208a89e7bb46f5356ea857"

      define_method(:install) do
        bin.install "symfritz"
        bin.install "symfritz-go"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/danieljustus/symaira-fritz/releases/download/v0.7.0/symaira-fritz_0.7.0_linux_arm64.tar.gz"
      sha256 "91130836454965363953687d00a8353bc3984b0769addc066061f7a2e4dae975"

      define_method(:install) do
        bin.install "symfritz"
        bin.install "symfritz-go"
      end
    end
  end

  test do
    system "#{bin}/symfritz", "version"
    system "#{bin}/symfritz-go", "version"
  end
end

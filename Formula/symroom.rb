class Symroom < Formula
  desc "Shared, verifiable work record for projects"
  homepage "https://github.com/danieljustus/symaira-room"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-room/releases/download/v0.2.0/symroom_0.2.0_darwin_arm64.tar.gz"
      sha256 "2a8dba31f86a7d896eb4d50a773c0c6072f1d3b04c076e3fd3bcfed80ffa2ed2"
    else
      url "https://github.com/danieljustus/symaira-room/releases/download/v0.2.0/symroom_0.2.0_darwin_amd64.tar.gz"
      sha256 "a98e5eadac1d7c6b8c8f3ee7e171d456c1982738ee7e5731e7e5001e0a0d64f5"
    end
  end

  def install
    bin.install "symroom"
  end

  test do
    assert_match "symroom", shell_output("#{bin}/symroom --help")
  end
end

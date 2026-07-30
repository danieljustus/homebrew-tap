class Symroom < Formula
  desc "Shared, verifiable work record for projects"
  homepage "https://github.com/danieljustus/symaira-room"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-room/releases/download/v0.1.0/symroom_0.1.0_darwin_arm64.tar.gz"
      sha256 "ae02a1791838ae58c833a79d14c539b739a90f488d35dd228769692d9ba6492f"
    else
      url "https://github.com/danieljustus/symaira-room/releases/download/v0.1.0/symroom_0.1.0_darwin_amd64.tar.gz"
      sha256 "b07ff281481200fb4e21a51b439f917088cc0ddcb4c99a7f48f4b23963f092bb"
    end
  end

  def install
    bin.install "symroom"
  end

  test do
    assert_match "symroom", shell_output("#{bin}/symroom --help")
  end
end

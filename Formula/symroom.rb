class Symroom < Formula
  desc "Shared, verifiable work record for projects"
  homepage "https://github.com/danieljustus/symaira-room"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-room/releases/download/v0.1.1/symroom_0.1.1_darwin_arm64.tar.gz"
      sha256 "985af0fbeb1699e3018797f500d5f1262649414a58919c43cda7f200aaaf3bdd"
    else
      url "https://github.com/danieljustus/symaira-room/releases/download/v0.1.1/symroom_0.1.1_darwin_amd64.tar.gz"
      sha256 "4c30009e23f052c89f98f692a5a80b9e5aae65c155e10899340d54fb7c0cfdd4"
    end
  end

  def install
    bin.install "symroom"
  end

  test do
    assert_match "symroom", shell_output("#{bin}/symroom --help")
  end
end

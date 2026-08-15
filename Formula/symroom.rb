class Symroom < Formula
  desc "Shared, verifiable work record for projects"
  homepage "https://github.com/danieljustus/symaira-room"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/danieljustus/symaira-room/releases/download/v0.3.0/symroom_0.3.0_darwin_arm64.tar.gz"
      sha256 "50ea4128309f483ac888624bda42bb386c89b27cbf2ac1be7e5c32b397ebf5ff"
    else
      url "https://github.com/danieljustus/symaira-room/releases/download/v0.3.0/symroom_0.3.0_darwin_amd64.tar.gz"
      sha256 "830ede9834b04c7aef8f40911e054e840ebe4e68e07862821487929807fbc92a"
    end
  end

  def install
    bin.install "symroom"
  end

  test do
    assert_match "symroom", shell_output("#{bin}/symroom --help")
  end
end

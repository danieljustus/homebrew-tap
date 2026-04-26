class Openpass < Formula
  desc "Modern CLI password manager with age encryption"
  homepage "https://github.com/danieljustus/OpenPass"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/danieljustus/OpenPass/releases/download/v1.2.0/OpenPass_1.2.0_darwin_amd64.tar.gz"
      sha256 "059bd7080e088253b14c3c0c5b4e83e012738adb788e0c6a51821324867d086e"
    end
    on_arm do
      url "https://github.com/danieljustus/OpenPass/releases/download/v1.2.0/OpenPass_1.2.0_darwin_arm64.tar.gz"
      sha256 "724a670e91f8462093381459aa8f7fc87bbc813e205834741f5279ed1591d916"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/danieljustus/OpenPass/releases/download/v1.2.0/OpenPass_1.2.0_linux_amd64.tar.gz"
      sha256 "609822d79785865b84922be78b8e4516a6ac040609c50eb6827c6989fd2e2282"
    end
    on_arm do
      url "https://github.com/danieljustus/OpenPass/releases/download/v1.2.0/OpenPass_1.2.0_linux_arm64.tar.gz"
      sha256 "ae1b3a5c8e2a62fb8f2e3d0552585f7bfc29881c09880fd4f6d6f08f0d60a156"
    end
  end

  def install
    bin.install "openpass"
    
    # Install completions
    bash_completion.install "completions/openpass.bash" => "openpass"
    zsh_completion.install "completions/openpass.zsh" => "_openpass"
    fish_completion.install "completions/openpass.fish"
    
    # Install man pages
    man1.install Dir["docs/man/*.1"]
  end

  test do
    system "#{bin}/openpass", "version"
  end
end

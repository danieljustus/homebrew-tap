# typed: false
# frozen_string_literal: true

class Symvibe < Formula
  desc "Graphical Vibe-Coding Baukasten that drives opencode"
  homepage "https://github.com/danieljustus/symaira-vibecoder"
  version "0.3.0"
  license "MIT"

  url "https://github.com/danieljustus/symaira-vibecoder/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "aa9135c320c4497a11f7b3fbeb38773ff8d0e4062ce063d9effe61d72a28b6f5"

  depends_on "go" => :build

  def install
    system "CGO_ENABLED=0", "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/symvibe"
  end

  test do
    system "#{bin}/symvibe", "version"
  end
end

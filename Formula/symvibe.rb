# typed: false
# frozen_string_literal: true

class Symvibe < Formula
  desc "Graphical Vibe-Coding Baukasten that drives opencode"
  homepage "https://github.com/danieljustus/symaira-vibecoder"
  url "https://github.com/danieljustus/symaira-vibecoder/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "aa9135c320c4497a11f7b3fbeb38773ff8d0e4062ce063d9effe61d72a28b6f5"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/danieljustus/symaira-vibecoder/internal/version.Version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/symvibe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/symvibe version")
  end
end

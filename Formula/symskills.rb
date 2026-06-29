# typed: false
# frozen_string_literal: true

class Symskills < Formula
  desc "Portable Skill SSOT manager for local AI agent harnesses"
  homepage "https://github.com/danieljustus/symaira-skills"
  url "https://github.com/danieljustus/symaira-skills/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "e66de88e0dc5ef9982ab94f6128c9e1a7612279b7bb7d3346da221a8b692ae29"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/symskills"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/symskills --version")
  end
end

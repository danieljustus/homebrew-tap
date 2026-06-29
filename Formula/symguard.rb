# typed: false
# frozen_string_literal: true

class Symguard < Formula
  desc "Local-first security gateway for AI agents and MCP servers"
  homepage "https://github.com/danieljustus/symaira-guard"
  url "https://github.com/danieljustus/symaira-guard/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8396e7ea0c93ebbabd8bd0c0b6ddc2457f34d8efad83f5c388f825818a95a198"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/symguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/symguard version")
  end
end

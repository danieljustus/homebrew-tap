# typed: false
# frozen_string_literal: true

class Symdesk < Formula
  desc "Local-first markdown vault workspace: CLI and MCP server"
  homepage "https://github.com/danieljustus/symaira-desktop"
  url "https://github.com/danieljustus/symaira-desktop/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "da1b9d50ae50ab9ac2f2f8801996a3814a62bb38d982a2acc18ba3864c60abea"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/symdesk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/symdesk version")
  end
end

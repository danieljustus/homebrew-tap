cask "symseek" do
  version "2.0.1"
  sha256 "b91600e54e4fc9fdb7c4547a61f92a021231e7b6ad09b15a4e52fcb5402d2185"

  url "https://github.com/danieljustus/symaira-seek/releases/download/v#{version}/symaira-seek_#{version}_darwin_arm64.tar.gz"
  name "symseek"
  desc "Local-first, CGO-free document retrieval for AI agents"
  homepage "https://github.com/danieljustus/symaira-seek"

  binary "symseek"
end

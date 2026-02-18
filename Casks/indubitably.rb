cask "indubitably" do
  version "0.1.6"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "b21008de37a262c494a5af54b208c01de8ffe409f05d85a1623197514fd1bc5c",
         intel: "515d4a498f0b004f8f24a8e2f32608792d1f6805ee54c1fc37709f7b8ce6ce9a"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.indubitably"
end

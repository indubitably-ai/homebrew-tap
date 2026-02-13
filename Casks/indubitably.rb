cask "indubitably" do
  version "0.1.0-dev.3"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "d2dbe0d0c2c5044b90b81cc7d7c83e07f6a7dd1d54b83bb0718a8ae7f5fae70d",
         intel: "c03b380a5d58eb4235c480d2b745171da02f6ae813f2924caf5866802a7d0c45"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.indubitably"
end

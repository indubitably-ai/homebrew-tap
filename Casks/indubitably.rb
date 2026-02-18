cask "indubitably" do
  version "0.1.8"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "59c2657a827792a883f6437d45523ca68c8696d01aea59b220fc5fb08e60412f",
         intel: "83d12e6696d0f9ee0787a8cd52b7b272575bf22ae03da8e5591fd9384638a496"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.indubitably"
end

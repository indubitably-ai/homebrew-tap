cask "indubitably" do
  version "0.1.19"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "0b2902373fe2dfb345d29d45d3f952cd955999815015fa22acc65c5f6fafa05e",
         intel: "46bc3c1ea793c88c02c18a62695767924ab87873e2f77c57f186f09223eb0c1f"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.codex"
end

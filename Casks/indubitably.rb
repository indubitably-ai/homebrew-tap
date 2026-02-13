cask "indubitably" do
  version "0.1.0"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "90fb3ff715d4fd5b80b90f2d2c20d3d8c3065834fa773602fe0ef9b8e8ae027a",
         intel: "fcdfef41dcdd07482cc4a9888cb05433add9838d1ad22f8b7fb717229959f094"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.indubitably"
end

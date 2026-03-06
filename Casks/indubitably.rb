cask "indubitably" do
  version "0.1.17"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "85c8dddfc7b6b5519928ea6403f0f9a36c4965297ac357191c7220558ddf8cd5",
         intel: "22d65239909d24321b1f9350cafb8d86e812ba0dbb73fdf2ee8a28b3b06948a1"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.codex"
end

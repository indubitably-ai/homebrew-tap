cask "indubitably" do
  version "0.1.10"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "ffb11c0275700f68fdfbd941cb6b91755d5612ae140cffd33163537b75c71cf5",
         intel: "11aa1654da2d3e9ed9890a9e9bf7daf0ecfb744822e29c16afabaf96baad6215"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.indubitably"
end

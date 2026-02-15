cask "indubitably" do
  version "0.1.4"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "2a2fc9c0e8a469c437645d5022d4d3101863a6b526202b876b3ed35c62a4fcee",
         intel: "9c9a626a1c165ddf07057dfd6b6c1a12b5cf67cb05d7fa46e8d341b2e5ae2cbb"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.indubitably"
end

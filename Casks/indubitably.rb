cask "indubitably" do
  version "0.1.18"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "86e5b98797cbb66b67389cfb28e6972aa2c7915370fc1228ecb0655024d0b32c",
         intel: "10e631bc113288a7e7a8d2f38aa7614b43ef9bc020944234ce025cf1eda4a132"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.codex"
end

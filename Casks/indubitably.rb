cask "indubitably" do
  version "0.1.0-dev.1"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "bcdabed5da2ffaaff6b624ca2895afbadb2307bafb6a70a3421095e1766d23ac",
         intel: "e657c1295781f8c06c25fefbbfa24538d5226f6e5d51e829affa61e917792e45"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.indubitably"
end

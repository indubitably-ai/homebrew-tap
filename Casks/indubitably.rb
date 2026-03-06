cask "indubitably" do
  version "0.1.16"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "760f9be4e16acc8857f94332b3cb24a59ac7df4592f1f2a91b3d9e16d5e401e3",
         intel: "e79bb08aa041d3632774cddc4c8ca4e7a9e814b69d8045517e14b0c40217a416"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.codex"
end

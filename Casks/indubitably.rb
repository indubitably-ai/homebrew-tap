cask "indubitably" do
  version "0.1.20"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "7247cfcf52df028635466348d780daaefa0ba1daba63051dba03dfc12a17a37b",
         intel: "01c309939c06b0d9826b876b95e909c428e8043dbbb688cebd7a27552530dd96"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.codex"
end

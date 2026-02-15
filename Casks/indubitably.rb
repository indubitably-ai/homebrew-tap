cask "indubitably" do
  version "0.1.3"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "716251c182a03bb455679e8f1a63c8920692e072eecc351382a51ee9e1dd0939",
         intel: "ed07ad10c5b9c173d5288a887edf9f34585c10f77d80bbcaf81f0ed9d765a332"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.indubitably"
end

cask "indubitably" do
  version "0.1.15"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "c533cf30754b1cf2b6bcc5134e2995da53e684d79f50a5f36a848edab8d51033",
         intel: "942c9abd227fa21a02949f60e3b89b08b7f23cef168c5b709e6f570df9513b8a"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.codex"
end

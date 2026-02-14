cask "indubitably" do
  version "0.1.2"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "13a80fc0db6ce850b9751f6e0f94d892080acdf15aac5f562776c2071f3bc31b",
         intel: "c959a693d9def5e1468651ac0358050325a1767a3cc31dc404e390333af3999f"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.indubitably"
end

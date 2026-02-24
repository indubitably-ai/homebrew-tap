cask "indubitably" do
  version "0.1.13"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "d7c5772401f23c034aca64f414b2bc7bddffaecb1ab2e96f8b08c6172b5c775a",
         intel: "24d3f93abab85cd55aea3d5eff582c13634df259ada1ebde992ce95e4f216173"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.indubitably"
end

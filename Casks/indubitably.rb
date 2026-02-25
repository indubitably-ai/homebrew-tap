cask "indubitably" do
  version "0.1.14"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "0c3fcb7f3b0053a328e9affb50c676e0c10eb4ca30716a7abaaba00d2ad1988f",
         intel: "9a08172faa36aff2bfbd556895e7adf5a49f4c8ae69c18e3999e3aade5ee0442"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.indubitably"
end

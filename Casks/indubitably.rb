cask "indubitably" do
  version "0.1.11"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "f13b0187314639de8c3412b43021da363df3ada7617a63af6850b0ba612095d9",
         intel: "11aa1654da2d3e9ed9890a9e9bf7daf0ecfb744822e29c16afabaf96baad6215"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.indubitably"
end

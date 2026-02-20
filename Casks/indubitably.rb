cask "indubitably" do
  version "0.1.9"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "b88f24bf3c665e6fdecee2bc01290b6aa2d2c29b26ac06e4245e48e82f22ec33",
         intel: "bb1b22365ea5398136a0ccd368c30803a406a928fc3c63ba9a45eb746906edc3"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.indubitably"
end

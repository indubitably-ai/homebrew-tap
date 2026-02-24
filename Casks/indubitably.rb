cask "indubitably" do
  version "0.1.12"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "21315f4fc737e148bef22f9461547141063165f3e01c4742af51e46543836146",
         intel: "159daf0a909b28c5e066d477d3e17b1067be3b2d68d0196501b30d7b315fb241"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.indubitably"
end

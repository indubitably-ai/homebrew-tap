cask "indubitably" do
  version "0.1.1"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "7374641adf4c75ba981d76f67ce4da7ca5e38adf514e4f1441f3b36a58b82e5b",
         intel: "3b9b15aa726e27494b024a5b2a1caf3841c72e0139aad2df4af3e4569a19592e"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.indubitably"
end

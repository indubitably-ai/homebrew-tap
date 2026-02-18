cask "indubitably" do
  version "0.1.7"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "e24aafbab002fd6ae94ec381dfccd6cde8119686bb14f251fd38a33abe6e9b29",
         intel: "91202751cdd92b51c307ef174e4023a2c3907c77d2f7ea9f77f9388e81f3ce81"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.indubitably"
end

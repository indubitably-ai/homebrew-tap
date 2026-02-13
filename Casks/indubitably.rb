cask "indubitably" do
  version "0.1.0-dev.2"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "66cddddda0fe4465f5f9a1d487d18242cdbc10c2bf840febfefb64cdf50e3d55",
         intel: "cc29e1d0d142db7cb31a6270221a9c4226179af9e4d24700e71fd4943dface42"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.indubitably"
end

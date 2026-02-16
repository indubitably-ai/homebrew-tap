cask "indubitably" do
  version "0.1.5"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "5c39c68a16df618fca6de89d57350e5890e075e532f89de3db3f6fc40f7cda2c",
         intel: "00dc1aa52d59a9cbb7a620e7aba52db5a40629fe35c27daef8d1b36b71c00c3e"

  url "https://downloads.indubitably.ai/cli/indubitably/#{version}/indubitably-#{arch}-apple-darwin.tar.gz"
  name "Indubitably CLI"
  desc "Indubitably CLI (Codex fork)"
  homepage "https://www.indubitably.ai/"

  binary "indubitably-#{arch}-apple-darwin", target: "indubitably"

  zap trash: "~/.indubitably"
end

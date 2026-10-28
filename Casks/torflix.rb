cask "torflix" do
  arch arm: "arm64", intel: "x64"

  version "0.31.0"
  sha256 arm:   "772c5842f9532c47b5e99dce9f060c3a8b50bccaf6e87a090475d5984da22a8b",
         intel: "a97ac9574757536b0336baf8a49ea751f84bff5289868aa687a5e0377404152f"

  url "https://github.com/gary23w/torflix/releases/download/v#{version}/Torflix-#{version}-mac-#{arch}.dmg"
  name "Torflix"
  desc "Stream torrent videos while they download"
  homepage "https://github.com/gary23w/torflix"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Torflix.app"

  zap trash: [
    "~/Library/Application Support/Torflix",
    "~/Library/Preferences/io.torflix.app.plist",
    "~/Library/Saved Application State/io.torflix.app.savedState",
  ]

  caveats <<~EOS
    Torflix is not notarized by Apple, so macOS blocks its first start.
    Open System Settings > Privacy & Security and click Open Anyway.
  EOS
end

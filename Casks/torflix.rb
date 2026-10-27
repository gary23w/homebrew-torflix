cask "torflix" do
  arch arm: "arm64", intel: "x64"

  version "0.3.1"
  sha256 arm:   "ba1565a8155bf2abc593b27901485acfe4e12b08ca94ea2c5e658f079601b3e6",
         intel: "4637d0cf38f389ce26b9f0e12776b043ca01f632f0bcc2eb3e33d112cd08bf82"

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

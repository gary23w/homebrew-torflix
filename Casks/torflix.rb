cask "torflix" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "561d71dc0b11623c8b3d772e32c5f2e4699ed4184b8639301cfececde82912cc",
         intel: "f8c7aa84c0dcd2ad0d55ef7eb94376e4e2a70339143b01fd60e8d5bddbc6c3df"

  url "https://github.com/gary23w/torflix/releases/download/v#{version}/Torflix-#{version}-mac-#{arch}-r1.dmg"
  name "Torflix"
  desc "Torrent video streaming and downloads"
  homepage "https://github.com/gary23w/torflix"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  app "Torflix.app"
end

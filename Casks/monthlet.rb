cask "monthlet" do
  version "1.2.1"
  sha256 "5da610163429f8e667e9a50064b3d2def618f13b1aca8e69452f00b1a3817025"

  url "https://github.com/t27d/monthlet-releases/releases/download/v#{version}/monthlet.dmg",
      verified: "github.com/t27d/monthlet-releases/"
  name "monthlet"
  desc "Notes app where AI builds notes into a local folder"
  homepage "https://monthlet.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "monthlet.app"

  zap trash: [
    "~/Library/Application Support/monthlet",
    "~/Library/Caches/monthlet-updater",
    "~/Library/HTTPStorages/ai.monthlet.desktop",
    "~/Library/HTTPStorages/ai.monthlet.desktop.helper",
    "~/Library/Logs/monthlet",
    "~/Library/Preferences/ai.monthlet.desktop.plist",
    "~/Library/Saved Application State/ai.monthlet.desktop.savedState",
  ]
end

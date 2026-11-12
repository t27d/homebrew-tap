cask "monthlet" do
  version "1.3.0"
  sha256 "7902290f77a75939ccb24679fa0426f2619fa661148c950bd28d79c8181ebb07"

  url "https://github.com/t27d/monthlet-releases/releases/download/v#{version}/monthlet.dmg"
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

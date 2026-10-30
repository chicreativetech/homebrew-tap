cask "scribui" do
  arch arm: "arm64", intel: "x64"

  version "0.2.7"
  sha256 arm:   "51d4db7fe6364cd911f16ae90f234c1d08abc0ad1a90745aaa00e5068db12b0b",
         intel: "51b32548139f1bd63d9864b9090d03a8a95e1c86a57a161d60d66e8077967cc1"

  url "https://github.com/chicreativetech/scribui/releases/download/v#{version}/ScribUI-#{version}-mac-#{arch}.dmg"
  name "ScribUI"
  desc "Visual review between you and your coding agent"
  homepage "https://github.com/chicreativetech/scribui"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "ScribUI.app"

  zap trash: [
    "~/Library/Application Support/ScribUI",
    "~/Library/Caches/dev.scribui.desktop*",
    "~/Library/Logs/ScribUI",
    "~/Library/Preferences/dev.scribui.desktop.plist",
    "~/Library/Saved Application State/dev.scribui.desktop.savedState",
  ]
end

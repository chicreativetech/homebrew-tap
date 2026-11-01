cask "scribui" do
  arch arm: "arm64", intel: "x64"

  version "0.2.8"
  sha256 arm:   "4576f5d61675edd713ff8e428d9b73f933b2f5c9bb0ea26ce29b6059298955a5",
         intel: "1340a761de6de86a1193bc43a839e01dc5459bb7fb49321fe00351f07a26fbec"

  url "https://github.com/chicreativetech/scribui/releases/download/v#{version}/ScribUI-#{version}-mac-#{arch}.dmg"
  name "ScribUI"
  desc "Visual review between you and your coding agent"
  homepage "https://github.com/chicreativetech/scribui"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "ScribUI.app"

  zap trash: [
    "~/Library/Application Support/ScribUI",
    "~/Library/Caches/dev.scribui.desktop*",
    "~/Library/Logs/ScribUI",
    "~/Library/Preferences/dev.scribui.desktop.plist",
    "~/Library/Saved Application State/dev.scribui.desktop.savedState",
  ]
end

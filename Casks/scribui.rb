cask "scribui" do
  arch arm: "arm64", intel: "x64"

  version "0.2.11"
  sha256 arm:   "67fbe5e7514337105696a57829b77d58193aea60e12a1844af0cd34d4652845c",
         intel: "3e140aa535f3e20fad12d67c163030139513fa861e0abccc394208c4a7fe7022"

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

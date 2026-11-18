cask "scribui" do
  arch arm: "arm64", intel: "x64"

  version "0.2.16"
  sha256 arm:   "ed8a71115d42367900ed5fda610d39805aeb51e89e61bbff41552903aeb0a754",
         intel: "6795e06acbd951595843861275702e6ec3b1ff06fb05e13618cd7686286c1d75"

  url "https://github.com/chicreativetech/scribui/releases/download/v#{version}/ScribUI-#{version}-mac-#{arch}.dmg"
  name "ScribUI"
  desc "Visual review between you and your coding agent"
  homepage "https://scribui.chicreativetech.se"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "ScribUI.app"
  # the command line tool ships inside the app (0.2.15 and later)
  binary "#{appdir}/ScribUI.app/Contents/Resources/bin/scribui"

  zap trash: [
    "~/Library/Application Support/ScribUI",
    "~/Library/Caches/dev.scribui.desktop*",
    "~/Library/Logs/ScribUI",
    "~/Library/Preferences/dev.scribui.desktop.plist",
    "~/Library/Saved Application State/dev.scribui.desktop.savedState",
  ]
end

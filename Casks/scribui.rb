cask "scribui" do
  arch arm: "arm64", intel: "x64"

  version "0.2.14"
  sha256 arm:   "16d2d23be3b439acd98efb9cfca940a42cae289d7c7097abb4d30b47e133f434",
         intel: "e2ca80da371f3bb2e8b050fb67944e6b45f8b2c3ea55cc0064d1115cb5ff8ffa"

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

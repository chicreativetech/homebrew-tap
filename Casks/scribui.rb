cask "scribui" do
  arch arm: "arm64", intel: "x64"

  version "0.2.10"
  sha256 arm:   "223db9513c325fc38ef36e663b676113860da0f3af15007805e6cc7b762a8d2f",
         intel: "cca5266a69b7f3d410710ee5e22c74768a938a635931b19c995e6720855b0c8e"

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

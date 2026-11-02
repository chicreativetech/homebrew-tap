cask "scribui" do
  arch arm: "arm64", intel: "x64"

  version "0.2.9"
  sha256 arm:   "de929992aa1d29bfb47f92a4f40a70bb47062ac603a5e5e2e87d7f6c830935d0",
         intel: "a39b47599422596853611d711985738f6644dcf543d6f9542356a1fe42d1001b"

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

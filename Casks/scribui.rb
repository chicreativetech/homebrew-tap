cask "scribui" do
  arch arm: "arm64", intel: "x64"

  version "0.2.12"
  sha256 arm:   "045757cf1ca4c4c644fcd0a7a078fc595e94b2da779917d362f0a45cb5edb53d",
         intel: "5b1778a5c201aab1ff9024a54ba8f3d73d3dfaefb56c5efae6c06ca0f3a775a4"

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

cask "scribui" do
  arch arm: "arm64", intel: "x64"

  version "0.2.15"
  sha256 arm:   "902eca17d1d3490dcc0fb1ac1efff151f37449e766f339e395cc61488db85bef",
         intel: "78d36667086c75c1930c26d60a64bfcf29bffcc42ba3677ed0619060cea60bf4"

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

cask "zatto" do
  version "0.1.0"
  sha256 "01522d85a6b937782561c1e086bfa895c5a858051bd0e19cb3b4901fbde7ccb8"

  url "https://github.com/ignission/homebrew-tap/releases/download/zatto-v#{version}/Zatto-#{version}.zip"
  name "Zatto"
  desc "Menu bar input window that appends notes to Obsidian daily notes"
  homepage "https://github.com/ignission/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Zatto.app"

  uninstall quit: "tech.ignission.zatto"

  zap trash: [
    "~/Library/Application Support/zatto",
    "~/Library/Preferences/tech.ignission.zatto.plist",
  ]
end

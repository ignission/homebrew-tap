cask "zatto" do
  version "0.1.1"
  sha256 "33ed1f5c4109b99c1dd26833edc3a7c9f71968c8bf3feee1ec5c16fe7414044e"

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

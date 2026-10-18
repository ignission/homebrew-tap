cask "ark" do
  version "1.8.0"
  sha256 "cfc28ce8a170f6cd62db1b18b304db2e117864ab48ec7c18ab67246be8df9a97"

  url "https://github.com/ignission/claude-code-ark/releases/download/v#{version}/Ark-#{version}-arm64-mac.zip"
  name "Ark"
  desc "Web UI to manage multiple local AI coding agent sessions"
  homepage "https://github.com/ignission/claude-code-ark"

  depends_on arch: :arm64
  depends_on macos: ">= :monterey"
  depends_on formula: [
    "cloudflared",
    "tmux",
    "ttyd",
  ]

  app "Ark.app"

  zap trash: [
    "~/Library/Application Support/Ark",
    "~/Library/Logs/Ark",
    "~/Library/Preferences/app.ark.local.plist",
    "~/Library/Saved Application State/app.ark.local.savedState",
  ]

  caveats <<~EOS
    Ark は未署名配布です。初回起動時に Gatekeeper にブロックされた場合は、
    Finder で /Applications/Ark.app を右クリック → 「開く」を選び、
    ダイアログで「開く」を押してください。
  EOS
end

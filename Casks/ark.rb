cask "ark" do
  version "1.3.0"
  sha256 "bfbe9dd7c3571c3caa6ce62bb502d2889ce55a35913487d974c12ba10c233d0e"

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

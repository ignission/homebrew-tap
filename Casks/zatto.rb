cask "zatto" do
  version "0.2.2"
  sha256 "868194f8b72b4ef43bdcd6791a76fea7fdae7952b5ddb9b435fbe07b3147c102"

  url "https://github.com/ignission/homebrew-tap/releases/download/zatto-v#{version}/Zatto-#{version}.zip"
  name "Zatto"
  desc "Menu bar input window that appends notes to Obsidian daily notes"
  homepage "https://github.com/ignission/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Zatto.app"

  # 自己署名なので、検疫の印が残るとGatekeeperが起動を止める
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{appdir}}/Zatto.app"],
        writable_paths: ["{{appdir}}/Zatto.app"]
  end

  uninstall quit: "tech.ignission.zatto"

  zap trash: [
    "~/Library/Application Support/zatto",
    "~/Library/Preferences/tech.ignission.zatto.plist",
  ]

  caveats <<~EOS
    Zatto は自己署名で配布しています。このCaskは入れた後に検疫の印を外すので、
    Gatekeeper の確認は出ません。
    初回の設定の後、macOS が「入力監視」の許可を求めます。許可したら Zatto を
    開き直してください。許可は更新の後も残ります。
  EOS
end

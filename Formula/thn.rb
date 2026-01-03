class Thn < Formula
  desc "CLI tool for appending memos to Obsidian daily notes (Thino compatible)"
  homepage "https://github.com/ignission/thn"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ignission/thn/releases/download/v0.2.0/thn-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "d257b450bf880b1c682ed00aab0c0f1b54d474f1b150cceba7672dca53ec8289"
    end
    on_intel do
      url "https://github.com/ignission/thn/releases/download/v0.2.0/thn-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "585cebe8fba55336e5a0a6923c00e0d00915d6dc8bb0d65f4a8c860e210f502d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ignission/thn/releases/download/v0.2.0/thn-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "109077d0462db1714ed3daa2c3df8df942e6b3f15b5fbe029968f4168d140caf"
    end
    on_intel do
      url "https://github.com/ignission/thn/releases/download/v0.2.0/thn-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "469ebe1500ab24b74dd433d6439b15611fe38608ce724d07795206662010c1c6"
    end
  end

  def install
    bin.install "thn"
  end

  test do
    system "#{bin}/thn", "--version"
  end
end

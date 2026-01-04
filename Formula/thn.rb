class Thn < Formula
  desc "CLI tool for appending memos to Obsidian daily notes (Thino compatible)"
  homepage "https://github.com/ignission/thn"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ignission/thn/releases/download/v0.3.0/thn-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "e8fcff4af1fd3b7839117ebb11f620d31008a99c09f1489fe77585e3d6a94407"
    end
    on_intel do
      url "https://github.com/ignission/thn/releases/download/v0.3.0/thn-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "ddeb40723fb984a986f8ec885b1aa8b94d51dde7c3682814c646226a7d16e166"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ignission/thn/releases/download/v0.3.0/thn-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a10b3c6de16765c45617e255188870281177c2184b3827cf3b0b99f9aa42ee54"
    end
    on_intel do
      url "https://github.com/ignission/thn/releases/download/v0.3.0/thn-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "05e67e1dca3b0129c71a94f5292a4d1a232d5ba9805a3481737991d73f0b8c19"
    end
  end

  def install
    bin.install "thn"
  end

  test do
    system "#{bin}/thn", "--version"
  end
end

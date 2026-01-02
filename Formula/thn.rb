class Thn < Formula
  desc "CLI tool for appending memos to Obsidian daily notes (Thino compatible)"
  homepage "https://github.com/ignission/thn"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ignission/thn/releases/download/v0.1.0/thn-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "4b9e08154222efb7cec205151489bdaba2519fd5dcaf38873c648744ba088d53"
    end
    on_intel do
      url "https://github.com/ignission/thn/releases/download/v0.1.0/thn-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "3744e185c380eff4d8e7a4eb50af1b1b7690094cfb103f109c484367807d4465"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ignission/thn/releases/download/v0.1.0/thn-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a5be9f93f7ebe117735982c1a64b46d842ce3ebd88302dafcd46c0e55235ee2"
    end
    on_intel do
      url "https://github.com/ignission/thn/releases/download/v0.1.0/thn-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c44763399b5a690a5d97ed8b389254eba44c7c421beff29a835661005c304180"
    end
  end

  def install
    bin.install "thn"
  end

  test do
    system "#{bin}/thn", "--version"
  end
end

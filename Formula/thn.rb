class Thn < Formula
  desc "CLI tool for appending memos to Obsidian daily notes (Thino compatible)"
  homepage "https://github.com/ignission/thn"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ignission/thn/releases/download/v0.3.0/thn-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "1ffb05506903b6f1ec023a2b6026210b83c262986fd551f41ddfccc5ed69f184"
    end
    on_intel do
      url "https://github.com/ignission/thn/releases/download/v0.3.0/thn-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "248d9bfe86745f4672c09a37c8dc6208877dfaa075738d67e1a3c63d21891f48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ignission/thn/releases/download/v0.3.0/thn-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8c9d35ac53222328dd9fe31f5c84a7b623fba572d7a98f2d629a6494791dc50d"
    end
    on_intel do
      url "https://github.com/ignission/thn/releases/download/v0.3.0/thn-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "690b625e5ee4ad1d21e1e6711b44488e0fd4d081aa973dcbf660d4b3cfb41bd2"
    end
  end

  def install
    bin.install "thn"
  end

  test do
    system "#{bin}/thn", "--version"
  end
end

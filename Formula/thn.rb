class Thn < Formula
  desc "CLI tool for appending memos to Obsidian daily notes (Thino compatible)"
  homepage "https://github.com/ignission/thn"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ignission/thn/releases/download/v0.1.0/thn-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_MACOS_ARM"
    end
    on_intel do
      url "https://github.com/ignission/thn/releases/download/v0.1.0/thn-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_MACOS_INTEL"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ignission/thn/releases/download/v0.1.0/thn-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM"
    end
    on_intel do
      url "https://github.com/ignission/thn/releases/download/v0.1.0/thn-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_LINUX_INTEL"
    end
  end

  def install
    bin.install "thn"
  end

  test do
    system "#{bin}/thn", "--version"
  end
end

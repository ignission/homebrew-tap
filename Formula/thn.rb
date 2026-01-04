class Thn < Formula
  desc "CLI tool for appending memos to Obsidian daily notes (Thino compatible)"
  homepage "https://github.com/ignission/thn"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ignission/thn/releases/download/v0.3.1/thn-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "764e268d5872e61d6db9f76d145fc80ae89736cf9d63c0e1521b65e1826968ba"
    end
    on_intel do
      url "https://github.com/ignission/thn/releases/download/v0.3.1/thn-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "1407b345977a608efe2517f86ce130c5c793500546ef45c49622834ef0fd7622"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ignission/thn/releases/download/v0.3.1/thn-0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b177942cc379cfb211cab29634ffb8237e30ee482981167dfabf7d2dfe18de36"
    end
    on_intel do
      url "https://github.com/ignission/thn/releases/download/v0.3.1/thn-0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15095276d9050788e6d60239c0857e65250140340e7eb972c13c350c31c5844c"
    end
  end

  def install
    bin.install "thn"
  end

  test do
    system "#{bin}/thn", "--version"
  end
end

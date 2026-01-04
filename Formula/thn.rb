class Thn < Formula
  desc "CLI tool for appending memos to Obsidian daily notes (Thino compatible)"
  homepage "https://github.com/ignission/thn"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ignission/thn/releases/download/v0.3.2/thn-0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "fe534645c913b418a76f58dd2b016717d237568d0ff594f2e5698eda21ea146e"
    end
    on_intel do
      url "https://github.com/ignission/thn/releases/download/v0.3.2/thn-0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "1808626458802e424a94ea8183d12bc069b341afbc47ce9c801cc4403a0ee6e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ignission/thn/releases/download/v0.3.2/thn-0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9829e68d3335920f1e0d5b1bdba12fbf8d8108d57e96d5d9f95dc66184bd742c"
    end
    on_intel do
      url "https://github.com/ignission/thn/releases/download/v0.3.2/thn-0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0da96934ca757bd6be56698618be857edaa6ab4e22f0b4b7b1d708331e961a87"
    end
  end

  def install
    bin.install "thn"
  end

  test do
    system "#{bin}/thn", "--version"
  end
end

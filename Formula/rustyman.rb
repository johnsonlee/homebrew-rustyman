class Rustyman < Formula
  desc "High-performance MITM HTTP/HTTPS proxy written in Rust"
  homepage "https://github.com/johnsonlee/rustyman"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/johnsonlee/rustyman/releases/download/v0.2.3/rustyman-aarch64-apple-darwin.tar.gz"
      sha256 "091d591b35cdb94ae86d5ef87070fb26e2f5b92d2d50b7ab21f33cb7047abc2a"
    else
      url "https://github.com/johnsonlee/rustyman/releases/download/v0.2.3/rustyman-x86_64-apple-darwin.tar.gz"
      sha256 "a74a358336e8a51484171acbe2fe990e16d16acb1167acd0201033390a0ab9ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/johnsonlee/rustyman/releases/download/v0.2.3/rustyman-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a38542e66d438f608b28077bcd8234f0fbb9cb386520391f0804e2d2edad115"
    else
      url "https://github.com/johnsonlee/rustyman/releases/download/v0.2.3/rustyman-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9ce35d8e450b4cf55711c8dd35e54b6becf85be3f6e0250d785a7e493b1c5c25"
    end
  end

  def install
    bin.install "rustyman"
  end

  test do
    assert_match "rustyman", shell_output("#{bin}/rustyman --help")
  end
end

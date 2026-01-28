class Rustyman < Formula
  desc "High-performance MITM HTTP/HTTPS proxy written in Rust"
  homepage "https://github.com/johnsonlee/rustyman"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/johnsonlee/rustyman/releases/download/v0.2.2/rustyman-aarch64-apple-darwin.tar.gz"
      sha256 "b17c0c3c5b8401134c7ba967c741db81f7193b6a908280fc35e333182ad1cdd1"
    else
      url "https://github.com/johnsonlee/rustyman/releases/download/v0.2.2/rustyman-x86_64-apple-darwin.tar.gz"
      sha256 "8384f8172e96263aed66d96ff4d49a42ff14c4e72295169098c6a0dc7fbcc967"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/johnsonlee/rustyman/releases/download/v0.2.2/rustyman-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a9b36dd260bc58e489c67ed3e445af478444f592bd7faa6f2653f008619e6df6"
    else
      url "https://github.com/johnsonlee/rustyman/releases/download/v0.2.2/rustyman-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1a8e93e5bbd48960685bf5aae1878be65db4efe14f920f7de30f51f386f1edb1"
    end
  end

  def install
    bin.install "rustyman"
  end

  test do
    assert_match "rustyman", shell_output("#{bin}/rustyman --help")
  end
end

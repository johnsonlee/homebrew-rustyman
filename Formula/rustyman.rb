class Rustyman < Formula
  desc "High-performance MITM HTTP/HTTPS proxy written in Rust"
  homepage "https://github.com/johnsonlee/rustyman"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/johnsonlee/rustyman/releases/download/v0.2.1/rustyman-aarch64-apple-darwin.tar.gz"
      sha256 "b8096762a49fa6c0ddfa3c642ca80fb11e64d2d392f0743956046133fede6c5d"
    else
      url "https://github.com/johnsonlee/rustyman/releases/download/v0.2.1/rustyman-x86_64-apple-darwin.tar.gz"
      sha256 "78bf5e131380694471f3238d59a2a1e32445e88b55e62809f4316f2e7e7661e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/johnsonlee/rustyman/releases/download/v0.2.1/rustyman-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ec758e6ff8646df0a46f978a34ced0380d56bf24cef006f6bed0f3102019f2da"
    else
      url "https://github.com/johnsonlee/rustyman/releases/download/v0.2.1/rustyman-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cbcada0ae028c8d7b7686a974b28b10a03c5536fbc968188a4fd8500a1ce3834"
    end
  end

  def install
    bin.install "rustyman"
  end

  test do
    assert_match "rustyman", shell_output("#{bin}/rustyman --help")
  end
end

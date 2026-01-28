class Rustyman < Formula
  desc "High-performance MITM HTTP/HTTPS proxy written in Rust"
  homepage "https://github.com/johnsonlee/rustyman"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/johnsonlee/rustyman/releases/download/v0.2.0/rustyman-aarch64-apple-darwin.tar.gz"
      sha256 "1f4a6cbb399f98a989f5ea8aa6f366121a1cbb029161fd895f5562ddf1273524"
    else
      url "https://github.com/johnsonlee/rustyman/releases/download/v0.2.0/rustyman-x86_64-apple-darwin.tar.gz"
      sha256 "9dae6c625e74d553a43e29a6e31dd4c23fe108363ee10ecf776c7f9ded61f30b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/johnsonlee/rustyman/releases/download/v0.2.0/rustyman-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f73c7ab30766cfd0724a4c843c5b049fd44779335934b2cf324486b4a35e2f0c"
    else
      url "https://github.com/johnsonlee/rustyman/releases/download/v0.2.0/rustyman-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a5cf30247c5fd0674f502ec0010ffbb9497ea872c65472a4583be784cb14b0e4"
    end
  end

  def install
    bin.install "rustyman"
  end

  test do
    assert_match "rustyman", shell_output("#{bin}/rustyman --help")
  end
end

class Rustyman < Formula
  desc "High-performance MITM HTTP/HTTPS proxy written in Rust"
  homepage "https://github.com/johnsonlee/rustyman"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/johnsonlee/rustyman/releases/download/v0.1.0/rustyman-aarch64-apple-darwin.tar.gz"
      sha256 "388ec0a40ec71ebf37a966f01371a3aa14bc302592eebae845110b70ba5276c4"
    else
      url "https://github.com/johnsonlee/rustyman/releases/download/v0.1.0/rustyman-x86_64-apple-darwin.tar.gz"
      sha256 "b05ab5575b38d1d5894cc117b17233198d74f79930a26768a7676db9940896bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/johnsonlee/rustyman/releases/download/v0.1.0/rustyman-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56059fe0d44ab9235e417d79bc9ee810e5a4eeca31af2470bae5f961cfaa0ef8"
    else
      url "https://github.com/johnsonlee/rustyman/releases/download/v0.1.0/rustyman-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "02001bb701bc5388a8a69ef5799d3e25fc9e11c8888e8c1acc5071e1f8c29b75"
    end
  end

  def install
    bin.install "rustyman"
  end

  test do
    assert_match "rustyman", shell_output("#{bin}/rustyman --help")
  end
end

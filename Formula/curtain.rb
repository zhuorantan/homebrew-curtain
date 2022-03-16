class Curtain < Formula
  desc "Physical screen locking for macOS Screen Sharin" 
  homepage "https://github.com/zhuorantan/curtain"
  url "https://github.com/zhuorantan/curtain/archive/v1.0.tar.gz"
  sha256 "bc3d0c42cdc38c4856a2339bcc1f08d4cf3f28a09f10f8444297286d84afebed"
  version "1.0"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/curtain"
  end
end

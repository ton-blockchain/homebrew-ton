class Ton < Formula
  desc "A collection of The Open Network core software and utilities."
  homepage "http://github.com/ton-blockchain/ton"

  if Hardware::CPU.arm?
    url "https://github.com/ton-blockchain/homebrew-ton/releases/latest/download/ton-brew-arm64.tar.gz"
    sha256 "898b8be8d41a047dfbdffbadd5052ab81a62b9803ef4d54fd5a078d8648e9d5b" #arm64
  else
    url "https://github.com/ton-blockchain/homebrew-ton/releases/latest/download/ton-brew-x86-64.tar.gz"
    sha256 "0cd7e569f26e9c9851c78c250e1b8dc73b2386dbe653dbcf76fcbeb7b57396ef" #amd64
  end

  license "LGPL-2.0-only"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
    pkgshare.install Dir["share/*"]
  end
end

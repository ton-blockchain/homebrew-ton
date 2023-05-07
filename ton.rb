class Ton < Formula
  desc "A collection of The Open Network core software and utilities."
  homepage "http://github.com/ton-blockchain/ton"

  if Hardware::CPU.arm?
    url "https://github.com/ton-blockchain/homebrew-ton/releases/latest/download/ton-brew-arm64.tar.gz"
    sha256 "637f4fc9e0fef2cc98202118f190f45980ef894160c909ea663f44a325a93cef" #arm64
  else
    url "https://github.com/ton-blockchain/homebrew-ton/releases/latest/download/ton-brew-x86-64.tar.gz"
    sha256 "4d074d9f9676d21a660daaf7f7e2b20d3e0da20c2cfe17eae27334d9ee154717" #amd64
  end

  license "LGPL-2.0-only"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
  end
end

class Ton < Formula
  desc "A collection of The Open Network core software and utilities."
  homepage "http://github.com/ton-blockchain/ton"

  if Hardware::CPU.arm?
    url "https://github.com/ton-blockchain/homebrew-ton/releases/latest/download/ton-brew-arm64.tar.gz"
    sha256 "80004f250f4a7996c24123070f97044d70930df766036f7d527bed60c22eae27" #arm64
  else
    url "https://github.com/ton-blockchain/homebrew-ton/releases/latest/download/ton-brew-x86-64.tar.gz"
    sha256 "e4fb13dd8cd092490dc48d425b84bd71a5616f08d2613d168f9705995ee39140" #amd64
  end

  license "LGPL-2.0-only"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
  end
end

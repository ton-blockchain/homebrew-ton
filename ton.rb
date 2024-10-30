class Ton < Formula
  desc "A collection of The Open Network core software and utilities."
  homepage "http://github.com/ton-blockchain/ton"

  if Hardware::CPU.arm?
    url "https://github.com/ton-blockchain/homebrew-ton/releases/latest/download/ton-brew-arm64.tar.gz"
    sha256 "b8da41b85e82003c4d9be7c99c9425d6bff301503cc6ea27ec1de9fe37ed82c1" #arm64
  else
    url "https://github.com/ton-blockchain/homebrew-ton/releases/latest/download/ton-brew-x86-64.tar.gz"
    sha256 "4cf617af8f767c7cc0149aba8d676bb9748995da191769218b931481adcf4976" #amd64
  end

  license "LGPL-2.0-only"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
    pkgshare.install Dir["share/*"]
  end
end

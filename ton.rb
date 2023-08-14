class Ton < Formula
  desc "TON, The Open Network core software collection and utilities. A decentralized and open internet, created by the community using a technology designed by Telegram."
  homepage "https://github.com/ton-blockchain/ton"

  if Hardware::CPU.arm?
    url "https://github.com/ton-blockchain/homebrew-ton/releases/latest/download/ton-brew-arm64.tar.gz"
    sha256 "78ac5cf06fe4059f91f6db3706bd254fed5d26090901fc844e993cdb3ee6e883" # arm64
  else
    url "https://github.com/ton-blockchain/homebrew-ton/releases/latest/download/ton-brew-x86-64.tar.gz"
    sha256 "b435ea609f93e566c3590d6247b446e29aa3953a18394517289b87ce8115a75b" # amd64
  end

  license "LGPL-2.0-only"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
  end
end

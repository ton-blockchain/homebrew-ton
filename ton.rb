class Ton < Formula
  desc "A collection of The Open Network core software and utilities."
  homepage "http://github.com/ton-blockchain/ton"

  if Hardware::CPU.arm?
    url "https://github.com/ton-blockchain/homebrew-ton/releases/latest/download/ton-brew-arm64.tar.gz"
    sha256 "a601de6da0449425e8c5691589917534d17abfb87beec1d1936a811f6bc405bf" #arm64
  else
    url "https://github.com/ton-blockchain/homebrew-ton/releases/latest/download/ton-brew-x86-64.tar.gz"
    sha256 "998d73f14efa36b438470c6f8f3d90c9d2eb6c2975f72e47af79e3bcad030cd7" #amd64
  end

  license "LGPL-2.0-only"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
    pkgshare.install Dir["share/*"]
  end

  def caveats
    <<~EOS
      To use fift, set the FIFTPATH environment variable:

        export FIFTPATH=#{opt_lib}/fift:#{pkgshare}/ton/smartcont

      To use tolk, set the TOLK_STDLIB environment variable:

        export TOLK_STDLIB=#{pkgshare}/ton/smartcont/tolk-stdlib

      You can add the above lines to your ~/.zshrc or ~/.bashrc so it’s available in every shell.

      Create a wallet with fift:

      cd #{pkgshare}/ton/smartcont
      fift -s new-wallet-v3.fif 0 42 my-wallet-name

      Compile smart contract with tolk:

      tolk <path-to-tolk-smart-contract>
      
      Compile smart contract with func:

      cd #{pkgshare}/ton/smartcont
      func -o simple-wallet-code.fif -SPA stdlib.fc simple-wallet-code.fc
    EOS
  end

end

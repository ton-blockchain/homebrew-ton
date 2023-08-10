class Ton < Formula
  desc "A collection of The Open Network core software and utilities."
  homepage "http://github.com/ton-blockchain/ton"
  license "LGPL-2.0-only"

  # Define URLs and sha256 values for different architectures
  RELEASES = {
    arm64: {
      url: "https://github.com/ton-blockchain/homebrew-ton/releases/latest/download/ton-brew-arm64.tar.gz",
      sha256: "8805791123f2732eb476992b148a87e356f82cf1a48748ffe1dfd34ca9122517"
    },
    amd64: {
      url: "https://github.com/ton-blockchain/homebrew-ton/releases/latest/download/ton-brew-x86-64.tar.gz",
      sha256: "f75d041416f2b569ee2954a1dd267a03dedab28404ffb9e2b584ecedc3715f28"
    }
  }

  # Select the correct URL and sha256 based on the hardware
  if Hardware::CPU.arm?
    url RELEASES[:arm64][:url]
    sha256 RELEASES[:arm64][:sha256]
  else
    url RELEASES[:amd64][:url]
    sha256 RELEASES[:amd64][:sha256]
  end

  def install
    # Install binaries and libraries to the appropriate directories
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
  end
end

class Sf < Formula
  desc "Midnight Commander-style terminal file manager written in ARO"
  homepage "https://github.com/arolang/ShowFiles"
  version "1.0.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/arolang/ShowFiles/releases/download/1.0.1/sf-macos-arm64.tar.gz"
    sha256 "af8c1f53b80b9617131cc362d59b0fe88e09894bc6060385ff2f8a8bf4d71eb7"
  end

  on_linux do
    url "https://github.com/arolang/ShowFiles/releases/download/1.0.1/sf-linux-amd64.tar.gz"
    sha256 "c7eb2abd8c9de9746a4a02addbc130da5a9ba7f8ae5955f7db90e89520a448ce"
  end

  def install
    bin.install "sf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sf --version")
  end
end

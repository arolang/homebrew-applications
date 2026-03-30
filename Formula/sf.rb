class Sf < Formula
  desc "Midnight Commander-style terminal file manager written in ARO"
  homepage "https://github.com/arolang/ShowFiles"
  version "1.0.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/arolang/ShowFiles/releases/download/1.0.0/sf-macos-arm64.tar.gz"
    sha256 "d25b114ad4e14ec8e13b37ae05cc8827d81639f891623f97b30f1cf8930b18de"
  end

  on_linux do
    url "https://github.com/arolang/ShowFiles/releases/download/1.0.0/sf-linux-amd64.tar.gz"
    sha256 "c7eb2abd8c9de9746a4a02addbc130da5a9ba7f8ae5955f7db90e89520a448ce"
  end

  def install
    bin.install "sf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sf --version")
  end
end

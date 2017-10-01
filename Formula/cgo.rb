class Cgo < Formula
  desc "A terminal based gopher client"
  homepage "https://github.com/kieselsteini/cgo"
  url "https://github.com/kieselsteini/cgo/archive/c1ed336.zip"
  version "0.4.1"
  sha256 "f644ed2a40347d5d8567ef3d43c8c1da76ed251b71ddb34c576efa3b55782d13"

  depends_on "telnet"=> :optional
  depends_on "mplayer" => :optional

  # Allows test below to be passed - cgo -v returns an exit code of 1 without it
  patch do
    url "https://github.com/jad340/cgo/commit/80d7dc7e7bea16465e66ad7cedb00fbd0dfd3423.patch"
    sha256 "3a6630091a250550bb7efbacb3fd4a7736b7929d2bc1600821dec2d8be98847b"
  end

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/cgo", "-v"
  end
end

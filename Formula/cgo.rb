class Cgo < Formula
  desc "A terminal based gopher client"
  homepage "https://github.com/kieselsteini/cgo"
  url "https://github.com/kieselsteini/cgo/archive/ca69bbb.tar.gz"
  version "0.4.1"
  sha256 "fda68e99e5aaa72198183c19264d61cfaa3e90a16f60c0150e1f79083499d170"

  depends_on "telnet"=> :optional
  depends_on "mplayer" => :optional

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/cgo", "-v"
  end
end

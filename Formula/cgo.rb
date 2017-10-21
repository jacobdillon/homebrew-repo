class Cgo < Formula
  desc "A terminal based gopher client"
  homepage "https://github.com/kieselsteini/cgo"
  url "https://github.com/kieselsteini/cgo/archive/ca69bbb.zip"
  version "0.4.1"
  sha256 "b65942dbb0c59a409a304e079aaa1269c059bf4647d4543ed5e947ce6cc49b6b"

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

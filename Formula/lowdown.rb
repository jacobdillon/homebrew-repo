class Lowdown < Formula
  desc "Simple markdown translator"
  homepage "https://kristaps.bsd.lv/lowdown"
  url "https://github.com/kristapsdz/lowdown/archive/VERSION_0_3_0.tar.gz"
  sha256 "99f6777a9ea59b2032136f684a9a20441d3ca39dd30bdc4d543c23f1e046c61a"

  def install
  (buildpath/"configure.local").write <<-CFG.undent
      PREFIX=#{prefix}
      INCLUDEDIR=#{include}
      BINDIR=#{bin}
      LIBDIR=#{lib}
      MANDIR=#{man}
    CFG
    system "./configure"
    system "make", "install"
  end

  test do
    (testpath/"test.md").write("# Hello **world**")
    system bin/"lowdown", "test.md"
  end
end

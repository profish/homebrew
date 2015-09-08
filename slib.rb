require 'formula'

class Slib < Formula
  homepage 'http://people.csail.mit.edu/jaffer/SLIB.html'
  url 'http://groups.csail.mit.edu/mac/ftpdir/scm/slib-3b4.zip'
  sha1 'dda1ed78ff7164738a1a8c51f1f7c08ec1db79eb'

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make infoz"
    # install info files
    system "make install"
  end

  def test
  end
end

require 'formula'

class Slib < Formula
  homepage 'http://people.csail.mit.edu/jaffer/SLIB'
  url 'http://groups.csail.mit.edu/mac/ftpdir/scm/slib-3b5.zip'
  sha256 'f8b64a9820c2ccbdb263a0cb7bcf4caadce0857fdf4e2f52111ca33b4a131760'

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make infoz"
    # install info files
    system "make install"
  end
end

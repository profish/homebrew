require 'formula'

class Slib < Formula
  homepage 'http://people.csail.mit.edu/jaffer/SLIB'
  url 'http://groups.csail.mit.edu/mac/ftpdir/scm/slib-3b6.zip'
  sha256 '2e8cb4843b5400b2e39fe9ddcc8040a412f9a19cccf5e7e2c2e071ceb9b0ed8c'

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make infoz"
    # install info files
    system "make install"
  end
end

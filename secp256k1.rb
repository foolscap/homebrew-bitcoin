class Secp256k1  < Formula
  homepage "https://github.com/bitcoin/secp256k1"
  head "https://github.com/bitcoin/secp256k1.git", :revision => "3087bc4d75ec17287e71a36bda5df52a9ab8d854"

  depends_on "automake" => :build
  depends_on "autoconf" => :build
  depends_on "libtool" => :build
  depends_on "pkg-config" => :build
  depends_on "gmp"
  depends_on "openssl"

  def install
    system "./autogen.sh"
    system "./configure", "prefix=#{prefix}", "--disable-silent-rules"
    system "make", "install"
  end
end

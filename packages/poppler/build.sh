TERMUX_PKG_HOMEPAGE=https://poppler.freedesktop.org/
TERMUX_PKG_DESCRIPTION="PDF rendering library"
# When upgrading to 0.60.0, remove extra .2 and fix SRCURL...
TERMUX_PKG_VERSION=0.59.0.2
TERMUX_PKG_SHA256=a3d626b24cd14efa9864e12584b22c9c32f51c46417d7c10ca17651f297c9641
TERMUX_PKG_SRCURL=https://poppler.freedesktop.org/poppler-${TERMUX_PKG_VERSION:0:6}.tar.xz
# libcairo and littlecms is used by pdftocairo:
TERMUX_PKG_DEPENDS="fontconfig, libcairo, libpng, libjpeg-turbo, libtiff, littlecms, openjpeg, freetype, libxml2"
#texlive needs the xpdf headers
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--disable-poppler-glib  --enable-xpdf-headers"

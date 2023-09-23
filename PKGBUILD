# This is an example PKGBUILD file. Use this as a start to creating your own,
# and remove these comments. For more information, see 'man PKGBUILD'.
# NOTE: Please fill out the license field for your package! If it is unknown,
# then please put 'unknown'.

# Maintainer: hyunchel
pkgname=hello
pkgver=1.1.0
pkgrel=1
epoch=
pkgdesc="A program that prints 'hello, world!' and then exits."
arch=('x86_64')
url="https://github.com/hyunchel/hello/releases/tag/v1.1.0"
license=('MIT')
groups=()
depends=('go>=1.21.0')
makedepends=()
checkdepends=()
optdepends=()
provides=()
conflicts=()
replaces=()
backup=()
options=()
install=proto.install
changelog=
source=("https://github.com/hyunchel/hello/archive/refs/tags/v1.1.0.tar.gz")
noextract=()
sha256sums=('SKIP')
validpgpkeys=()

prepare() {
	cd "$pkgname-$pkgver"
	# patch -p1 -i "$srcdir/$pkgname-$pkgver.patch"
}

build() {
	cd "$pkgname-$pkgver"
	# ./configure --prefix=/usr
	make
}

check() {
	cd "$pkgname-$pkgver"
	# make -k check
}

package() {
	cd "$pkgname-$pkgver"
	make DESTDIR="$pkgdir/" install
}

pkgname=arc-charcoal-gtk-theme-git
pkgver=1.0
pkgrel=1
pkgdesc="Arc-Dark, but cripspier"
arch=('any')
licence=('GPL3')
pkgdepends=('gnome-themes-standard' 'gtk-engine-murrine')
makedepends=('automake' 'autoconf' 'yarn' 'pkg-config' 'gtk3')

build() {
	cd ${srcdir}/../build-scripts
	./build-complete.sh
}

package() {
	mkdir -p ${pkgdir}/usr/share/themes
	cp -frax ${srcdir}/../dist/share/themes/Arc-Charcoal ${pkgdir}/usr/share/themes
	chmod -R a+r ${pkgdir}/usr/share/themes/*
	chmod -R o-w ${pkgdir}/usr/share/themes/*
}
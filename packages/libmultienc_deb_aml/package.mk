PKG_NAME="libmultienc_deb_aml"
PKG_VERSION="8f361b8436523eeec0ebe00c32e6c430c4f93caf"
PKG_SHA256="d22a35150f033b91b017dbb7291be6b6aed796fa6dd50e70447dca4ffd97c4e8"
PKG_SOURCE_DIR="${PKG_NAME}-${PKG_VERSION}*"
PKG_SITE="$GITHUB_URL/numbqq/${PKG_NAME}"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_ARCH="arm aarch64"
PKG_LICENSE="GPL"
PKG_SHORTDESC="Libmultienc"
PKG_SOURCE_NAME="${PKG_NAME}-${PKG_VERSION}.tar.gz"
PKG_NEED_BUILD="NO"


make_target() {
	:
}

makeinstall_target() {
	mkdir -p $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/${PKG_NAME}
	# Remove old debs
	rm -rf $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/${PKG_NAME}/*
	cp ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/*.deb $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/${PKG_NAME}
}

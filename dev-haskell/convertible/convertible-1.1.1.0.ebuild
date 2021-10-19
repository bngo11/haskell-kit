# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.6.9999
#hackport: flags: -buildtests

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Typeclasses and instances for converting between types"
HOMEPAGE="http://hackage.haskell.org/package/convertible"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/mtl:=[profile?]
	dev-haskell/old-locale:=[profile?]
	dev-haskell/old-time:=[profile?]
	>=dev-haskell/text-0.8:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-buildtests
}

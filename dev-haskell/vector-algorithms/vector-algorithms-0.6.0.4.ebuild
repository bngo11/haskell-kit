# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Efficient algorithms for vector arrays"
HOMEPAGE="http://code.haskell.org/~dolio/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="bench +boundschecks internalchecks +properties unsafechecks"

RESTRICT=test # hangs

RDEPEND="dev-haskell/mtl:=[profile?]
	dev-haskell/mwc-random:=[profile?]
	>=dev-haskell/primitive-0.3:=[profile?] <dev-haskell/primitive-0.7:=[profile?]
	>=dev-haskell/vector-0.6:=[profile?] <dev-haskell/vector-0.11:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.9.2
	test? ( properties? ( >=dev-haskell/quickcheck-2 ) )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag bench bench) \
		$(cabal_flag boundschecks boundschecks) \
		$(cabal_flag internalchecks internalchecks) \
		$(cabal_flag properties properties) \
		$(cabal_flag unsafechecks unsafechecks)
}

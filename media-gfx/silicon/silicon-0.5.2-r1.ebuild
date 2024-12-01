# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4-r1

EAPI=8

CRATES="
	ab_glyph_rasterizer@0.1.8
	adler@1.0.2
	ansi_term@0.12.1
	anyhow@1.0.75
	approx@0.5.1
	atty@0.2.14
	autocfg@1.1.0
	base64@0.21.5
	bincode@1.3.3
	bitflags@1.3.2
	bitflags@2.4.1
	block@0.1.6
	bytemuck@1.14.0
	byteorder@1.5.0
	cc@1.0.83
	cfg-if@1.0.0
	clap@2.34.0
	clipboard@0.5.0
	clipboard-win@2.2.0
	clipboard-win@4.5.0
	cmake@0.1.50
	cocoa@0.24.1
	cocoa-foundation@0.1.2
	color_quant@1.1.0
	const-cstr@0.3.0
	conv@0.3.3
	core-foundation@0.9.3
	core-foundation-sys@0.8.4
	core-graphics@0.22.3
	core-graphics-types@0.1.2
	core-text@19.2.0
	crc32fast@1.3.2
	crossbeam-deque@0.8.3
	crossbeam-epoch@0.9.15
	crossbeam-utils@0.8.16
	custom_derive@0.1.7
	deranged@0.3.9
	dirs@4.0.0
	dirs-next@2.0.0
	dirs-sys@0.3.7
	dirs-sys-next@0.1.2
	dlib@0.5.2
	dwrote@0.11.0
	either@1.9.0
	env_logger@0.9.3
	equivalent@1.0.1
	errno@0.3.7
	error-code@2.3.1
	fastrand@2.0.1
	fdeflate@0.3.1
	flate2@1.0.28
	float-ord@0.2.0
	fnv@1.0.7
	font-kit@0.11.0
	foreign-types@0.3.2
	foreign-types-shared@0.1.1
	freetype@0.7.0
	freetype-sys@0.13.1
	getrandom@0.1.16
	getrandom@0.2.11
	harfbuzz-sys@0.5.0
	hashbrown@0.14.2
	heck@0.3.3
	hermit-abi@0.1.19
	humantime@2.1.0
	image@0.24.7
	imageproc@0.23.0
	indexmap@2.1.0
	itertools@0.10.5
	itoa@1.0.9
	jpeg-decoder@0.3.0
	lazy_static@1.4.0
	libc@0.2.150
	libloading@0.8.1
	libredox@0.0.1
	line-wrap@0.1.1
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.11
	log@0.4.20
	malloc_buf@0.0.6
	matrixmultiply@0.3.8
	memchr@2.6.4
	memoffset@0.9.0
	miniz_oxide@0.7.1
	nalgebra@0.30.1
	num@0.4.1
	num-bigint@0.4.4
	num-complex@0.4.4
	num-integer@0.1.45
	num-iter@0.1.43
	num-rational@0.4.1
	num-traits@0.2.17
	objc@0.2.7
	objc-foundation@0.1.1
	objc_id@0.1.1
	once_cell@1.18.0
	onig@6.4.0
	onig_sys@69.8.1
	os_info@3.7.0
	owned_ttf_parser@0.15.2
	paste@1.0.14
	pasteboard@0.1.3
	pathfinder_geometry@0.5.1
	pathfinder_simd@0.5.2
	pkg-config@0.3.27
	plist@1.6.0
	png@0.17.10
	powerfmt@0.2.0
	ppv-lite86@0.2.17
	proc-macro-error@1.0.4
	proc-macro-error-attr@1.0.4
	proc-macro2@1.0.69
	quick-xml@0.31.0
	quote@1.0.33
	rand@0.7.3
	rand_chacha@0.2.2
	rand_core@0.5.1
	rand_distr@0.2.2
	rand_hc@0.2.0
	rawpointer@0.2.1
	rayon@1.8.0
	rayon-core@1.12.0
	redox_syscall@0.4.1
	redox_users@0.4.4
	regex-syntax@0.7.5
	rustc_version@0.4.0
	rustix@0.38.25
	rusttype@0.9.3
	ryu@1.0.15
	safe_arch@0.7.1
	safemem@0.3.3
	same-file@1.0.6
	scopeguard@1.2.0
	semver@1.0.20
	serde@1.0.193
	serde_derive@1.0.193
	serde_json@1.0.108
	shell-words@1.1.0
	simba@0.7.3
	simd-adler32@0.3.7
	str-buf@1.0.6
	strsim@0.8.0
	structopt@0.3.26
	structopt-derive@0.4.18
	syn@1.0.109
	syn@2.0.39
	syntect@5.1.0
	tempfile@3.8.1
	term_size@0.3.2
	termcolor@1.4.0
	textwrap@0.11.0
	thiserror@1.0.50
	thiserror-impl@1.0.50
	time@0.3.30
	time-core@0.1.2
	time-macros@0.2.15
	ttf-parser@0.15.2
	typenum@1.17.0
	unicode-ident@1.0.12
	unicode-segmentation@1.10.1
	unicode-width@0.1.11
	vec_map@0.8.2
	version_check@0.9.4
	walkdir@2.4.0
	wasi@0.9.0+wasi-snapshot-preview1
	wasi@0.11.0+wasi-snapshot-preview1
	wide@0.7.13
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows-sys@0.48.0
	windows-targets@0.48.5
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_msvc@0.48.5
	windows_i686_gnu@0.48.5
	windows_i686_msvc@0.48.5
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_msvc@0.48.5
	wio@0.2.2
	x11-clipboard@0.3.3
	xcb@0.8.2
	yaml-rust@0.4.5
	yeslogic-fontconfig-sys@3.2.0
"

PYTHON_COMPAT=( python3_{10..12} )
# <time@0.3.35
# https://github.com/time-rs/time/issues/693
RUST_MAX_VER="1.79.0"

inherit cargo python-any-r1

DESCRIPTION="Create beautiful image of your code"
HOMEPAGE="https://github.com/Aloxaf/silicon"
SRC_URI="https://github.com/Aloxaf/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI+=" ${CARGO_CRATE_URIS}"

LICENSE="Apache-2.0 Boost-1.0 BSD ISC MIT MPL-2.0 Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64"
# Prevent portage from trying to fetch bunch of *.crate from mirror despite they are not mirrored.
RESTRICT="mirror"
PATCHES=( "${FILESDIR}/silicon-0.5.2-remove-pathfinder_simd-patch.patch" )

BDEPEND="
	virtual/pkgconfig
	${PYTHON_DEPS}"
DEPEND="
	media-libs/fontconfig
	media-libs/freetype
	media-libs/harfbuzz
	x11-libs/libxcb"
RDEPEND="${DEPEND}
	x11-misc/xclip"

QA_FLAGS_IGNORED="usr/bin/silicon"

pkg_setup() {
	python-any-r1_pkg_setup
	rust_pkg_setup
}

src_prepare() {
	# Apply patch <https://github.com/rust-x-bindings/rust-xcb/pull/87> for python 3.9 and above.
	( cd "${WORKDIR}"/cargo_home/gentoo/xcb-0.8.2 && \
		eapply "${FILESDIR}"/rust-xcb-0.8.2-python-3.9.patch )

	default_src_prepare
}

src_install() {
	cargo_src_install

	dodoc README.md
}

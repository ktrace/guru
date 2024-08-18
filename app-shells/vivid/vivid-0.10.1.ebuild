# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.3

EAPI=8

CRATES="
	ansi_colours@1.2.2
	anstream@0.6.14
	anstyle-parse@0.2.4
	anstyle-query@1.1.0
	anstyle-wincon@3.0.3
	anstyle@1.0.7
	assert_cmd@2.0.14
	bitflags@2.5.0
	block-buffer@0.10.4
	bstr@1.9.1
	bytemuck@1.16.1
	cfg-if@1.0.0
	clap@4.5.7
	clap_builder@4.5.7
	clap_lex@0.7.1
	colorchoice@1.0.1
	cpufeatures@0.2.12
	crypto-common@0.1.6
	difflib@0.4.0
	digest@0.10.7
	doc-comment@0.3.3
	errno@0.3.9
	etcetera@0.8.0
	generic-array@0.14.7
	home@0.5.9
	is_terminal_polyfill@1.70.0
	lazy_static@1.5.0
	libc@0.2.155
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.14
	memchr@2.7.4
	predicates-core@1.0.6
	predicates-tree@1.0.9
	predicates@3.1.0
	proc-macro2@1.0.86
	quote@1.0.36
	regex-automata@0.4.7
	rgb@0.8.37
	rust-embed-impl@8.4.0
	rust-embed-utils@8.4.0
	rust-embed@8.4.0
	rustix@0.38.34
	same-file@1.0.6
	serde@1.0.203
	serde_derive@1.0.203
	sha2@0.10.8
	strsim@0.11.1
	syn@2.0.67
	terminal_size@0.3.0
	termtree@0.4.1
	typenum@1.17.0
	unicode-ident@1.0.12
	utf8parse@0.2.2
	version_check@0.9.4
	wait-timeout@0.2.0
	walkdir@2.5.0
	winapi-util@0.1.8
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.5
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.5
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.5
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.5
	windows_i686_gnullvm@0.52.5
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.5
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.5
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.5
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.5
	yaml-rust@0.4.5
"

inherit cargo

DESCRIPTION="A themeable LS_COLORS generator with a rich filetype datebase"
HOMEPAGE="https://github.com/sharkdp/vivid"
SRC_URI="
	https://github.com/sharkdp/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="|| ( Apache-2.0 MIT )"
# Dependent crate licenses
LICENSE+=" LGPL-3+ MIT Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64"

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"

src_install() {
	cargo_src_install
	dodoc README.md

	insinto /usr/share/vivid
	doins config/filetypes.yml

	insinto /usr/share/vivid/themes
	doins themes/*.yml
}

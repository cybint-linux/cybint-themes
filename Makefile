build:
	@$(MAKE) -C themes build

clean:
	@$(MAKE) -C themes clean
	dh_clean
	rm -rf debian/cybint-themes.substvars debian/debhelper-build-stamp debian/cybint-themes debian/.debhelper debian/files

install:
	@$(MAKE) -C themes install

pkg:
	@debuild -us -uc

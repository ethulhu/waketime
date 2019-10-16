VERSION := "$(shell date --utc +%Y%m%d.%H%M)-1"

build:
	@true

test: build
	@true

manifest: test
	find lib usr > $@

deb:
	bpkg-build . $(VERSION)

clean:
	rm -rf manifest *.deb *.deb.dat

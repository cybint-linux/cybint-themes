include ../../../Makefile.inc

SRC_FILE=assets.svg
ASSETS_DIR=assets

SRC_FILE_DARK=assets-dark.svg
ASSETS_DIR_DARK=assets-dark

ASSETS=$(shell xargs < assets.txt)
THEMES_DIR=../../../../share/themes/

.PHONY: build clean

build: $(SRC_FILE) $(SRC_FILE_DARK)
	mkdir -p $(ASSETS_DIR) $(ASSETS_DIR_DARK)
	for i in $(ASSETS) ; \
	do \
		echo ; \
		echo Rendering $(ASSETS_DIR)/$$i.png ; \
		$(INKSCAPE) --export-id=$$i \
		            --export-id-only \
		            --export-background-opacity=0 \
		            --export-png=$(ASSETS_DIR)/$$i.png $(SRC_FILE) > /dev/null 2>&1 \
		&& $(OPTIPNG) $(ASSETS_DIR)/$$i.png ; \
		echo ; \
		echo Rendering $(ASSETS_DIR_DARK)/$$i.png ; \
		$(INKSCAPE) --export-id=$$i \
		            --export-id-only \
		            --export-background-opacity=0 \
		            --export-png=$(ASSETS_DIR_DARK)/$$i.png $(SRC_FILE_DARK) > /dev/null 2>&1 \
		&& $(OPTIPNG) $(ASSETS_DIR_DARK)/$$i.png ; \
	done
	mkdir -p $(THEMES_DIR)CYBINT-Light/gtk-2.0/assets/
	cp assets/* $(THEMES_DIR)CYBINT-Light/gtk-2.0/assets/
	mkdir -p $(THEMES_DIR)CYBINT-Dark/gtk-2.0/assets/
	cp assets-dark/* $(THEMES_DIR)CYBINT-Dark/gtk-2.0/assets/

clean:
	-rm -r $(ASSETS_DIR) $(ASSETS_DIR_DARK)

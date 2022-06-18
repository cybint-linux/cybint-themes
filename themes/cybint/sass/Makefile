include ../../Makefile.inc

THEMES_DIR=../../../share/themes/

.PHONY: build clean

build: clean $(patsubst %.scss, %.css, $(wildcard *.scss))
	mkdir -p $(THEMES_DIR)CYBINT-Light/gtk-3.0/
	mkdir -p $(THEMES_DIR)CYBINT-Dark/gtk-3.0/
	mkdir -p $(THEMES_DIR)CYBINT-Light/gtk-4.0/
	mkdir -p $(THEMES_DIR)CYBINT-Dark/gtk-4.0/
	mkdir -p $(THEMES_DIR)CYBINT-Light/gnome-shell/
	mkdir -p $(THEMES_DIR)CYBINT-Dark/gnome-shell/
	
	cp gtk3.css $(THEMES_DIR)CYBINT-Light/gtk-3.0/gtk.css
	cp gtk3-dark.css $(THEMES_DIR)CYBINT-Light/gtk-3.0/gtk-dark.css
	cp gtk3-dark.css $(THEMES_DIR)CYBINT-Dark/gtk-3.0/gtk.css
	cp gtk4.css $(THEMES_DIR)CYBINT-Light/gtk-4.0/gtk.css
	cp gtk4-dark.css $(THEMES_DIR)CYBINT-Light/gtk-4.0/gtk-dark.css
	cp gtk4-dark.css $(THEMES_DIR)CYBINT-Dark/gtk-4.0/gtk.css
	cp gnome-shell.css $(THEMES_DIR)CYBINT-Light/gnome-shell/gnome-shell.css
	cp gnome-shell-dark.css $(THEMES_DIR)CYBINT-Dark/gnome-shell/gnome-shell.css


gnome%.css: gnome%.scss
	$(SCSS) $< > $@

%.css: %.scss
	$(SCSS) $< > $@
	cat $(wildcard gtk-applications-css/**/*.css) >> $@

clean:
	-rm *.css


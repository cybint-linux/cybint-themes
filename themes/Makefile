THEME_SRC=cybint/
SUBDIRS=$(foreach SUBDIR,gtk2 gtk3 xfwm4,assets-renderer/$(SUBDIR)) sass

.PHONY: build $(SUBDIRS) clean

build: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $(THEME_SRC)$@ build

clean:
	$(foreach SUBDIR,$(SUBDIRS),$(MAKE) -C $(THEME_SRC)$(SUBDIR) clean &&) true

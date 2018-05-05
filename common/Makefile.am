if !ENABLE_TRANSPARENCY
themedir        = $(datadir)/themes/Arc-solid
themedarkdir    = $(datadir)/themes/Arc-Charcoal-solid
else
themedir        = $(datadir)/themes/Arc
themedarkdir    = $(datadir)/themes/Arc-Charcoal
endif

ithemedir       = $(DESTDIR)$(themedir)
ithemedarkdir  = $(DESTDIR)$(themedarkdir)

install-exec-hook:

install-data-local:

if ENABLE_DARK
	$(MKDIR_P) $(ithemedarkdir)
	cp $(srcdir)/index.theme-dark $(ithemedarkdir)/index.theme
endif # ENABLE_DARK


if ENABLE_CINNAMON
	$(MKDIR_P) $(ithemedir)/cinnamon

	cd $(srcdir)/cinnamon && cp thumbnail.png $(ithemedir)/cinnamon

	cd $(srcdir)/cinnamon && cp -R \
		common-assets \
		light-assets \
		cinnamon.css \
		$(ithemedir)/cinnamon

if ENABLE_DARK
	$(MKDIR_P) $(ithemedarkdir)/cinnamon

	cd $(srcdir)/cinnamon && cp thumbnail-dark.png $(ithemedarkdir)/cinnamon/thumbnail.png

	cd $(srcdir)/cinnamon && cp -R \
		common-assets \
		dark-assets \
		$(ithemedarkdir)/cinnamon

	cd $(srcdir)/cinnamon && cp -R \
		cinnamon-dark.css \
		$(ithemedarkdir)/cinnamon/cinnamon.css
endif # ENABLE_DARK

endif # ENABLE_GNOME_SHELL


if ENABLE_GNOME_SHELL
	$(MKDIR_P) $(ithemedir)/gnome-shell

	cd $(srcdir)/gnome-shell/$(GNOME_VERSION) && cp -R \
		common-assets \
		light-assets \
		gnome-shell.css \
		$(ithemedir)/gnome-shell

if ENABLE_DARK
	$(MKDIR_P) $(ithemedarkdir)/gnome-shell

	cd $(srcdir)/gnome-shell/$(GNOME_VERSION) && cp -R \
		common-assets \
		dark-assets \
		$(ithemedarkdir)/gnome-shell

	cd $(srcdir)/gnome-shell/$(GNOME_VERSION) && cp -R \
		gnome-shell-dark.css \
		$(ithemedarkdir)/gnome-shell/gnome-shell.css
endif # ENABLE_DARK

endif # ENABLE_GNOME_SHELL


if ENABLE_GTK2

if ENABLE_DARK
	$(MKDIR_P) $(ithemedarkdir)/gtk-2.0

	cd $(srcdir)/gtk-2.0 && cp -R \
		menubar-toolbar \
		*.rc \
		$(ithemedarkdir)/gtk-2.0

	cd $(srcdir)/gtk-2.0 && cp -R \
		assets-dark \
		$(ithemedarkdir)/gtk-2.0/assets

	cd $(srcdir)/gtk-2.0 && cp -R \
		gtkrc-dark \
		$(ithemedarkdir)/gtk-2.0/gtkrc
endif # ENABLE_DARK

endif # ENABLE_GTK2


if ENABLE_GTK3

if ENABLE_DARK
	$(MKDIR_P) $(ithemedarkdir)/gtk-3.0

	cd $(srcdir)/gtk-3.0 && cp thumbnail-dark.png $(ithemedarkdir)/gtk-3.0/thumbnail.png

	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -R \
		assets \
		$(ithemedarkdir)/gtk-3.0

	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -R \
		gtk-dark.css \
		$(ithemedarkdir)/gtk-3.0/gtk.css
endif # ENABLE_DARK

if !ENABLE_TRANSPARENCY

if ENABLE_DARK
	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -R \
		gtk-solid-dark.css \
		$(ithemedarkdir)/gtk-3.0/gtk.css
endif # ENABLE_DARK

endif #!ENABLE_TRANSPARENCY

endif # ENABLE_GTK3


if ENABLE_METACITY

if ENABLE_DARK
	cp -R $(srcdir)/metacity-1 $(ithemedarkdir)

	cd $(ithemedarkdir)/metacity-1 && \
		mv metacity-theme-1-dark.xml metacity-theme-1.xml && \
		mv metacity-theme-2-dark.xml metacity-theme-2.xml && \
		mv thumbnail-dark.png thumbnail.png
endif # ENABLE_DARK

endif # ENABLE_METACITY


if ENABLE_UNITY

if ENABLE_DARK
	cp -R $(srcdir)/unity $(ithemedarkdir)

	cd $(ithemedarkdir)/unity && \
	rm -rf window-buttons && \
	mv window-buttons-dark window-buttons
endif # ENABLE_DARK

endif # ENABLE_UNITY


if ENABLE_XFWM

if ENABLE_DARK
	$(MKDIR_P) $(ithemedarkdir)/xfwm4

	cd $(srcdir)/xfwm4 && \
		cp -R assets-dark/*.png $(ithemedarkdir)/xfwm4 && \
		cp themerc-dark $(ithemedarkdir)/xfwm4/themerc
endif # ENABLE_DARK

endif # ENABLE_XFWM


uninstall-local:
	rm -rf $(ithemedir)

if ENABLE_DARK
	rm -rf $(ithemedarkdir)
endif # ENABLE_DARK


EXTRA_DIST = $(srcdir)/cinnamon \
	     $(srcdir)/gnome-shell \
	     $(srcdir)/gtk-2.0 \
	     $(srcdir)/gtk-3.0 \
	     $(srcdir)/metacity-1 \
	     $(srcdir)/unity \
	     $(srcdir)/xfwm4 \
	     $(srcdir)/index.theme \
	     $(srcdir)/index.theme-darker \
	     $(srcdir)/index.theme-dark

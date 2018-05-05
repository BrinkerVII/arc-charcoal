# Arc-Charcoal Theme

Stuff

## Screenshot

![A screenshot of the Arc-Charcoal theme](http://i.imgur.com/5AGlCnA.png)

## Installation

### Manual Installation

To build the theme the follwing packages are required 
* `autoconf`
* `automake`
* `pkg-config` or `pkgconfig` for Fedora
* `libgtk-3-dev` for Debian based distros or `gtk3-devel` for RPM based distros
* `git` to clone the source directory

**Note:** For distributions which don't ship separate development packages, just the GTK 3 package is needed instead of the `-dev` packages.

For the theme to function properly, install the following
* GNOME Shell 3.14 - 3.24, GTK 3.14 - 3.22
* The `gnome-themes-standard` package
* The murrine engine. This has different names depending on the distro.
  * `gtk-engine-murrine` (Arch Linux)
  * `gtk2-engines-murrine` (Debian, Ubuntu, elementary OS)
  * `gtk-murrine-engine` (Fedora)
  * `gtk2-engine-murrine` (openSUSE)
  * `gtk-engines-murrine` (Gentoo)

Install the theme with the following commands

    git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme


## Bugs
If you find a bug, please report it at https://github.com/horst3180/arc-theme/issues

## License
Arc is available under the terms of the GPL-3.0. See `COPYING` for details.

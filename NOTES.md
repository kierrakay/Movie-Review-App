brew install imagemagick

ran this command in terminal to download imagemagick for paperclip to download. for images hopefully it diesnt break.

==> readline
readline is keg-only, which means it was not symlinked into /usr/local,
because macOS provides the BSD libedit library, which shadows libreadline.
In order to prevent conflicts when programs look for libreadline we are
defaulting this GNU Readline installation to keg-only.

For compilers to find readline you may need to set:
  export LDFLAGS="-L/usr/local/opt/readline/lib"
  export CPPFLAGS="-I/usr/local/opt/readline/include"

For pkg-config to find readline you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig"

==> sqlite
sqlite is keg-only, which means it was not symlinked into /usr/local,
because macOS provides an older sqlite3.

If you need to have sqlite first in your PATH run:
  echo 'export PATH="/usr/local/opt/sqlite/bin:$PATH"' >> ~/.zshrc

For compilers to find sqlite you may need to set:
  export LDFLAGS="-L/usr/local/opt/sqlite/lib"
  export CPPFLAGS="-I/usr/local/opt/sqlite/include"

For pkg-config to find sqlite you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"

==> python
Python has been installed as
  /usr/local/bin/python3

Unversioned symlinks `python`, `python-config`, `pip` etc. pointing to
`python3`, `python3-config`, `pip3` etc., respectively, have been installed into
  /usr/local/opt/python/libexec/bin

You can install Python packages with
  pip3 install <package>
They will install into the site-package directory
  /usr/local/lib/python3.7/site-packages

See: https://docs.brew.sh/Homebrew-and-Python
==> glib
Bash completion has been installed to:
  /usr/local/etc/bash_completion.d




  ==> Installing imagemagick
==> Downloading https://homebrew.bintray.com/bottles/imagemagick-7.0.9-23.catalina.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/e3/e3e61bbbcf1b16248136f1743dd0358c10e97dc8637f3dda556a8b
######################################################################## 100.0%
==> Pouring imagemagick-7.0.9-23.catalina.bottle.tar.gz
🍺  /usr/local/Cellar/imagemagick/7.0.9-23: 1,480 files, 24.5MB
==> `brew cleanup` has not been run in 30 days, running now...
Removing: /Users/kierrashaw/Library/Caches/Homebrew/gmp--6.1.2_2.catalina.bottle.1.tar.gz... (996.4KB)
Removing: /Users/kierrashaw/Library/Caches/Homebrew/gnutls--3.6.11.1.catalina.bottle.tar.gz... (3MB)
Removing: /Users/kierrashaw/Library/Caches/Homebrew/libgpg-error--1.36.catalina.bottle.tar.gz... (279.8KB)
Removing: /Users/kierrashaw/Library/Caches/Homebrew/libtasn1--4.15.0.catalina.bottle.tar.gz... (122.7KB)
Removing: /Users/kierrashaw/Library/Caches/Homebrew/p11-kit--0.23.18.1.catalina.bottle.tar.gz... (702.9KB)
Removing: /usr/local/Cellar/readline/8.0.1... (48 files, 1.5MB)
Removing: /Users/kierrashaw/Library/Caches/Homebrew/readline--8.0.1.catalina.bottle.tar.gz... (517.3KB)
Removing: /usr/local/Cellar/sqlite/3.30.1... (11 files, 3.9MB)
Removing: /Users/kierrashaw/Library/Caches/Homebrew/sqlite--3.30.1.catalina.bottle.tar.gz... (1.9MB)
Removing: /Users/kierrashaw/Library/Caches/Homebrew/unbound--1.9.5.catalina.bottle.tar.gz... (2.4MB)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/pkg-config... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/libtool... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/coreutils... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/gmp... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/pinentry... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/libidn2... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/libksba... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/nettle... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/libunistring... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/libyaml... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/readline... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/libassuan... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/sqlite... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/libgpg-error... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/zlib... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/libgcrypt... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/gettext... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/autoconf... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/libtasn1... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/libevent... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/openssl@1.1... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/unbound... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/libusb... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/gnupg... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/p11-kit... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/automake... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/libffi... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/gnutls... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/npth... (64B)
Removing: /Users/kierrashaw/Library/Logs/Homebrew/adns... (64B)
Pruned 0 symbolic links and 5 directories from /usr/local
==> Caveats
==> readline
readline is keg-only, which means it was not symlinked into /usr/local,
because macOS provides the BSD libedit library, which shadows libreadline.
In order to prevent conflicts when programs look for libreadline we are
defaulting this GNU Readline installation to keg-only.

For compilers to find readline you may need to set:
  export LDFLAGS="-L/usr/local/opt/readline/lib"
  export CPPFLAGS="-I/usr/local/opt/readline/include"

For pkg-config to find readline you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig"

==> sqlite
sqlite is keg-only, which means it was not symlinked into /usr/local,
because macOS provides an older sqlite3.

If you need to have sqlite first in your PATH run:
  echo 'export PATH="/usr/local/opt/sqlite/bin:$PATH"' >> ~/.zshrc

For compilers to find sqlite you may need to set:
  export LDFLAGS="-L/usr/local/opt/sqlite/lib"
  export CPPFLAGS="-I/usr/local/opt/sqlite/include"

For pkg-config to find sqlite you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"
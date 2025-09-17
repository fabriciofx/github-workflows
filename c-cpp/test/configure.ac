# SPDX-FileCopyrightText: Copyright (C) 2025 Fabrício Barros Cabral
# SPDX-License-Identifier: MIT

AC_PREREQ([2.69])
AC_INIT([hello], [0.0.1], [fabriciofx@gmail.com])
AC_CONFIG_AUX_DIR([build])
AC_CONFIG_MACRO_DIRS([m4])
AM_INIT_AUTOMAKE([-Wall -Werror foreign subdir-objects])

AC_PROG_CC
AC_PROG_CXX
AM_PROG_AR
LT_INIT

# Export this info to Makefile
AC_SUBST([PACKAGE_NAME])
AC_SUBST([PACKAGE_VERSION])

# To detect endianness
AC_C_BIGENDIAN([WORDS_BIGENDIAN])

# Detect host system
AC_CANONICAL_HOST

AC_MSG_NOTICE([Checking target operating system...])

case "$host_os" in
  linux*)
    CFLAGS="$CFLAGS -DOSTYPE_LINUX"
    AC_MSG_NOTICE([Detected Linux OS])
    ;;
  darwin*)
    CFLAGS="$CFLAGS -DOSTYPE_DARWIN"
    AC_MSG_NOTICE([Detected macOS])
    ;;
  freebsd*)
    CFLAGS="$CFLAGS -DOSTYPE_FREEBSD"
    AC_MSG_NOTICE([Detected FreeBSD])
    ;;
  netbsd*)
    CFLAGS="$CFLAGS -DOSTYPE_NETBSD"
    AC_MSG_NOTICE([Detected NetBSD])
    ;;
  openbsd*)
    CFLAGS="$CFLAGS -DOSTYPE_OPENBSD"
    AC_MSG_NOTICE([Detected OpenBSD])
    ;;
  mingw* | cygwin* | msys*)
    CFLAGS="$CFLAGS -DOSTYPE_WINDOWS"
    AC_MSG_NOTICE([Detected Windows (MinGW/Cygwin)])
    ;;
  *)
    AC_MSG_WARN([Unknown OS type: $host_os])
    os_type=UNKNOWN
    ;;
esac

# Add dirs to PKG_CONFIG_PATH
AC_DEFUN([ADD_TO_PKG_CONFIG_PATH],
[
  for dir in $@; do
    if test -d "$dir"; then
      case ":$PKG_CONFIG_PATH:" in
        *":$dir:"*) ;;
        *) PKG_CONFIG_PATH="$dir:$PKG_CONFIG_PATH" ;;
      esac
    fi
  done
  if test -n "$PKG_CONFIG_PATH"; then
    export PKG_CONFIG_PATH
  fi
])

# Detect Homebrew or MSYS2 pkg-config paths
AC_MSG_NOTICE([Detecting pkg-config paths...])
case "$host_os" in
  darwin*)
    case "$host_cpu" in
      x86_64)
        ADD_TO_PKG_CONFIG_PATH([/usr/local/lib/pkgconfig])
        ;;
      aarch64)
        ADD_TO_PKG_CONFIG_PATH([/opt/homebrew/opt/libpcap/lib/pkgconfig])
        ADD_TO_PKG_CONFIG_PATH([/opt/homebrew/opt/tcl-tk/lib/pkgconfig])
        ;;
    esac
    ;;
  mingw* | cygwin* | msys*)
    ADD_TO_PKG_CONFIG_PATH([/mingw64/lib/pkgconfig])
    ;;
esac

# Show PKG_CONFIG_PATH variable
AC_MSG_NOTICE([PKG_CONFIG_PATH=$PKG_CONFIG_PATH])

# Create config.h
AC_CONFIG_HEADERS([config.h])

# Output final Makefiles
AC_CONFIG_FILES([Makefile src/Makefile])
AC_OUTPUT

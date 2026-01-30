# SPDX-FileCopyrightText: Copyright (C) 2025-2026 Fabrício Barros Cabral
# SPDX-License-Identifier: MIT

# Executable
bin_PROGRAMS = hello hello-cpp

# Source files
hello_SOURCES = hello.c
hello_cpp_SOURCES = hello-cpp.cpp

# Flags
.PHONY: depend clean-local install-bin-local

depend:
	@echo "Making dependences..."
	@$(CC) $(AM_CFLAGS) -MM $(hello_SOURCES) > .depend || true
	@$(CC) $(AM_CFLAGS) -MM $(hello_cpp_SOURCES) > .depend || true

-include .depend

clean-local:
	rm -rf hello hello-cpp

BIN_DISTDIR = $(PACKAGE_NAME)-$(PACKAGE_VERSION)

install-bin-local:
	@ABS_DISTDIR=$$(pwd)/../$(BIN_DISTDIR); \
	echo "Installing binary files in $$ABS_DISTDIR..."; \
	$(MAKE) install DESTDIR=$$ABS_DISTDIR;

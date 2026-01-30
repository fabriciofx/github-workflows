# SPDX-FileCopyrightText: Copyright (C) 2025-2026 Fabrício Barros Cabral
# SPDX-License-Identifier: MIT

RM = rm
LATEXMK = latexmk
LINT = lacheck
LATEXINDENT = latexindent
PLANTUML = plantuml
INKSCAPE = inkscape

BUILD_OPTS = -pdf -shell-escape -use-make
CLEAN_OPTS = -rf
FORMAT_OPTS = -l -m -s -w
DIAGRAMS_OPTS = -tsvg

.PHONY: all build document lint format diagrams clean

all: build

build: diagrams document

document:
	$(LATEXMK) $(BUILD_OPTS) *.tex

lint:
	$(LINT) *.tex

format:
	$(LATEXINDENT) $(FORMAT_OPTS) *.tex

diagrams:
	@if [ -d uml ]; then \
		$(PLANTUML) $(DIAGRAMS_OPTS) uml/*.puml; \
		for file in $$(ls uml/*.svg); do \
			pdf=$$(echo $$file | sed s/svg/pdf/g); \
			$(INKSCAPE) --export-background="#ffffff" \
				--export-filename=$$pdf $$file 2> /dev/null; \
		done \
	fi

clean:
	$(RM) $(CLEAN_OPTS) *.iml .DS_Store *.aux *.log *.bcf* *.bbl* \
		*.fdb_latexmk *.fls *.run.xml *.blg *.synctex.gz *.bak* *.out \
		*.toc _minted* uml/*.svg uml/*.pdf *.minted *.pdf

# SPDX-FileCopyrightText: Copyright (C) 2025 Fabrício Barros Cabral
# SPDX-License-Identifier: MIT

PYTHON=python
PIP=pip
RUFF=ruff
PYTEST=pytest
ACTIVATE=. .venv/bin/activate

.PHONY: install tests lint format clean

install:
	$(PYTHON) -m venv .venv
	$(ACTIVATE) && $(PIP) install -r requirements.txt

tests:
	$(ACTIVATE) && $(PYTEST)

lint:
	$(ACTIVATE) && $(RUFF) check .

format:
	$(ACTIVATE) && $(RUFF) format .

clean:
	rm -rf .venv dist *.egg-info
	find . -type d -name "*.pyc" -exec rm -r {} +
	find . -type d -name "__pycache__" -exec rm -r {} +
	find . -type d -name ".ruff_cache" -exec rm -r {} +
	find . -type d -name ".pytest_cache" -exec rm -r {} +

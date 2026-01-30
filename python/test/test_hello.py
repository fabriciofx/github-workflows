# SPDX-FileCopyrightText: Copyright (C) 2025-2026 Fabrício Barros Cabral
# SPDX-License-Identifier: MIT

from hello import hello


def test_hello() -> None:
    assert hello() == "Hello World!\n"

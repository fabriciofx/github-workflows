#!/bin/bash

# SPDX-FileCopyrightText: Copyright (C) 2025 Fabrício Barros Cabral
# SPDX-License-Identifier: MIT

set -euo pipefail {0}

name="Fabrício"

for i in $(seq 1 10); do
    echo "Hello ${name}!"
done

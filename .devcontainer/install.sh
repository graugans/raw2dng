#!/bin/bash
# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2025 Christian Ege <ch@ege.io>

# Determine if sudo is needed
if [ "$(id -u)" -eq 0 ]; then
    SUDO=""
else
    SUDO="sudo"
fi

# Update package list and upgrade all packages
$SUDO apt-get update && $SUDO apt-get upgrade -y

# Install common packages
$SUDO apt-get install -y \
    build-essential \
    cmake \
    git \
    curl \
    wget \
    python3 \
    python3-pip \
    libssl-dev \
    libffi-dev \
    zlib1g-dev \
    libexiv2-dev \
    libraw-dev \
    libexpat1-dev \
    libjpeg-dev

# Clean up
$SUDO apt-get clean
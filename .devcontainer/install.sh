#!/bin/bash
# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Christian Ege <ch@ege.io>

# Update package list and upgrade all packages
sudo apt-get update && sudo apt-get upgrade -y

# Install common packages
sudo apt-get install -y \
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
sudo apt-get clean
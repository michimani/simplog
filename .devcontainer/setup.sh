#!/bin/bash
set -e

HUGO_VERSION=0.150.1
ARCH=$(dpkg --print-architecture)
curl -fsSL "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-${ARCH}.tar.gz" \
  | sudo tar -xz -C /usr/local/bin hugo

corepack enable
corepack prepare pnpm@10.27.0 --activate
pnpm install

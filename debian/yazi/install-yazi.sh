#!/bin/sh

echo "Installing Yazi file manager..."

# Install from cargo (Rust package manager)
# First ensure cargo is installed
if ! command -v cargo &> /dev/null; then
    echo "Installing Rust and Cargo..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    source "$HOME/.cargo/env"
fi

cargo install --locked yazi-fm yazi-cli

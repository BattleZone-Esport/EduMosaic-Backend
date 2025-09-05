#!/usr/bin/env bash
set -o errexit

# Rust install
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env

# Force cargo cache to HOME
export CARGO_HOME=$HOME/.cargo
export RUSTUP_HOME=$HOME/.rustup

pip install --upgrade pip
pip install -r requirements.txt
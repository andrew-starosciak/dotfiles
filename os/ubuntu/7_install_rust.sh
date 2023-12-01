#!/bin/bash

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Note. In Fish terminal we need to source the path correctly.
# Open file ~/.config/fish/config.fish
# Add the line 'set PATH $PATH ~/.cargo/bin'
# Restart fish.

git clone https://github.com/rust-lang/rust-analyzer.git
cd rust-analyzer
cargo xtask install --server
cd ..
rm -rf rust-analyzer

rustup component add rust-src
rustup component add rustfmt
rustup component add clippy

cargo install cargo-watch
cargo install evcxr
cargo install evcxr_repl

rustup install nightly
rustup component add rust-src --toolchain nightly-x86_64-unknown-linux-gnu
rustup component add rust-analyzer --toolchain nightly-x86_64-unknown-linux-gnu
rustup component add clippy --toolchain nightly-x86_64-unknown-linux-gnu

cargo +nightly install cargo-watch
cargo +nightly install evcxr

# benchmarking
cargo install hyperfine

# Generate
cargo install cargo-generate

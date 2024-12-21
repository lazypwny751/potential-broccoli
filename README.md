# potential-broccoli
<<<<<<< HEAD
an eBPF based alarm generator written in bpftrace, awk an bash.
![image](https://github.com/user-attachments/assets/9c4dc2b8-a629-4cdb-a9a9-ef347740c334)

## Description
Low requirements utility tool that provides basic information about distribution, is like lsb_release.

# Installation

## Requirements
* [bpftrace](url)
* [awk](url)
* [bash](url)

```
git clone $REPO $PATH
cd $PATH
```

# Usage
...

# Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

# License
[GPL3](https://choosealicense.com/licenses/gpl-3.0/)
=======

![image](https://github.com/user-attachments/assets/9c4dc2b8-a629-4cdb-a9a9-ef347740c334)

## Prerequisites

1. stable rust toolchains: `rustup toolchain install stable`
1. nightly rust toolchains: `rustup toolchain install nightly --component rust-src`
1. (if cross-compiling) rustup target: `rustup target add ${ARCH}-unknown-linux-musl`
1. (if cross-compiling) LLVM: (e.g.) `brew install llvm` (on macOS)
1. (if cross-compiling) C toolchain: (e.g.) [`brew install filosottile/musl-cross/musl-cross`](https://github.com/FiloSottile/homebrew-musl-cross) (on macOS)
1. bpf-linker: `cargo install bpf-linker` (`--no-default-features` on macOS)

## Build & Run

Use `cargo build`, `cargo check`, etc. as normal. Run your program with:

```shell
cargo run --release --config 'target."cfg(all())".runner="sudo -E"'
```

Cargo build scripts are used to automatically build the eBPF correctly and include it in the
program.

## Cross-compiling on macOS

Cross compilation should work on both Intel and Apple Silicon Macs.

```shell
CC=${ARCH}-linux-musl-gcc cargo build --package potential-broccoli --release \
  --target=${ARCH}-unknown-linux-musl \
  --config=target.${ARCH}-unknown-linux-musl.linker=\"${ARCH}-linux-musl-gcc\"
```
The cross-compiled program `target/${ARCH}-unknown-linux-musl/release/potential-broccoli` can be
copied to a Linux server or VM and run there.
>>>>>>> dev

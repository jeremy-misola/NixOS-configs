Nixos-Configs
===========================

[![NixOS](https://img.shields.io/badge/NixOS-25.05-blue?style=for-the-badge&logo=nixos)](https://nixos.org/)
[![Built with Nix Flakes](https://img.shields.io/badge/Built_with-Nix_Flakes-41439a?style=for-the-badge&logo=nixos)](https://nixos.wiki/wiki/Flakes)
[![License: Unlicense](https://img.shields.io/badge/license-Unlicense-lightgrey.svg?style=for-the-badge)](http://unlicense.org/)

> **What is NixOS?**
> NixOS is a Linux distribution that takes a unique, declarative approach to system configuration. Instead of modifying files and running commands, you define the desired state of your operating system, from the kernel and system services to installed packages and dotfiles in a set of configuration files. Nix then builds this system for you, enabling perfectly reproducible environments, atomic upgrades, and instant rollbacks.

This repository is the complete source code for my personal development environment, built on this declarative philosophy.

### The Motivation

My journey here began after I fell in love with the Nix philosophy of declarative systems. I previously attempted to wrangle my setup on Arch Linux with scripts and Git-managed dotfiles, but found this to be a fragile abstraction over a mutable base. NixOS provides the foundation to realize a purely declarative desktop.

### Architectural Highlights

This configuration is built with modularity and reproducibility at its core, leveraging modern Nix features to manage complexity.

*   **Flake-Based Management**: The entire system is orchestrated through a `flake.nix` entrypoint. This locks all dependencies, including `nixpkgs`, `home-manager`, and `nixvim` to specific commits, guaranteeing bit-for-bit reproducibility across machines and over time.

*   **Modular Design**: The configuration is logically partitioned into `system-modules` (for services like Docker and Tailscale) and `home-manager` modules (for user-level applications like Kitty and NixVim). This separation of concerns keeps the codebase clean and easy to maintain.

*   **System Configuration**:
    *   **OS**: NixOS 25.05, enabling atomic upgrades and safe rollbacks.e 
    *   **Boot**: `systemd-boot` for a clean, fast, and straightforward UEFI boot process.
    *   **Services**: System-level services like `Docker` and `Tailscale` are managed declaratively, ensuring they are configured correctly on every build.
    *   **Audio**: `PipeWire` is used for a modern, low-latency audio stack.

### User Environment (via Home-Manager)
*   **Dev Environment**: Development tools are managed declaratively, including the `Go` toolchain, a full `Kubernetes` stack (`kubectl`, `minikube`, `k9s`, `kubecolor`), and `VS Codium` for a graphical editor.
*   **Fully configured terminal**: The user's terminal environment is precisely defined with a riced `kitty` configuration and `bash` as the shell. This is enhanced with `oh-my-posh` for an aesthetically pleasing prompt, `zoxide` for intelligent directory navigation, and `tmux` for robust session management.
*   **Fully Declarative Editor**: A Neovim setup managed entirely by `nixvim`. This configuration includes a curated set of plugins managed in Nix, such as `telescope` for advanced fuzzy finding, integrated `LSP` support for intelligent code completion (with servers for Rust, Go, and Nix), `oil.nvim` for file navigation, and more.
*   **Power-User Utilities**: A rich ecosystem of command-line utilities is included to maximize productivity, featuring `btop` for resource monitoring, `fzf` for universal fuzzy finding, `ripgrep` for fast code search, `bat` for a modern `cat`, `jq` for JSON manipulation, and `thefuck` for effortless command correction.

### Installation

To deploy this configuration on a new machine:

1.  **Install NixOS**: Follow the official NixOS installation guide.
2.  **Clone the Repository**: `git clone https://github.com/jeremy-misola/NixOS-configs/ ~/nixos-config`
3.  **Build and Switch**: `sudo nixos-rebuild switch --flake ~/nixos-config#nixos`

This will build the entire system configuration from the flake and activate it.

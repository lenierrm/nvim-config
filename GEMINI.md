# Neovim Configuration

## Project Overview

This is a Neovim configuration managed by the `lazy.nvim` plugin manager. The configuration is structured in a modular way, with different files for options, plugins, and LSP settings.

The main technologies used are:

*   **Neovim:** The text editor.
*   **Lua:** The language used for configuration.
*   **lazy.nvim:** A modern plugin manager for Neovim.
*   **LSP (Language Server Protocol):** For code intelligence features like completion and diagnostics.
*   **mason-lspconfig:** To manage LSP servers.

The project is structured as follows:

*   `init.lua`: The entry point of the configuration. It sets up `lazy.nvim` and loads the rest of the configuration.
*   `lua/vim-options.lua`: Contains basic Neovim settings.
*   `lua/plugins/`: This directory contains the configuration for each plugin in a separate file.
*   `lua/lsp/`: This directory contains the LSP configuration, including global settings and server-specific setups.

## Building and Running

This is a Neovim configuration, so there is no "building" or "running" in the traditional sense. To use this configuration, you need to:

1.  Install Neovim (v0.8.0+).
2.  Clone this repository to `~/.config/nvim`.
3.  Start Neovim. `lazy.nvim` will automatically install the plugins.

## Development Conventions

The configuration is written in Lua and follows the standard Lua style. The plugins are managed by `lazy.nvim`, and the configuration for each plugin is in its own file in the `lua/plugins/` directory. This makes it easy to add, remove, or modify plugins.

LSP servers are managed by `mason-lspconfig`, which simplifies their installation and setup. New servers can be added to the `mason_servers` table in `lua/lsp/init.lua`.

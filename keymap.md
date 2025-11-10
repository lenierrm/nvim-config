# Keymaps

This file lists all the keymaps configured in this Neovim setup.

| Keymap      | Action                                       | File                                   |
|-------------|----------------------------------------------|----------------------------------------|
| `gd`        | Go to definition                             | `lua/lsp/handlers.lua`                 |
| `gD`        | Go to declaration                            | `lua/lsp/handlers.lua`                 |
| `gr`        | Go to references                             | `lua/lsp/handlers.lua`                 |
| `gi`        | Go to implementation                         | `lua/lsp/handlers.lua`                 |
| `K`         | Show hover documentation                     | `lua/lsp/handlers.lua`                 |
| `<C-k>`     | Show signature help                          | `lua/lsp/handlers.lua`                 |
| `<leader>rn`| Rename symbol                                | `lua/lsp/handlers.lua`                 |
| `<leader>ca`| Show code actions                            | `lua/lsp/handlers.lua`                 |
| `<leader>f` | Format buffer                                | `lua/lsp/handlers.lua`                 |
| `<C-n>`     | Toggle Neo-tree                              | `lua/plugins/neo-tree.lua`             |
| `C-h`       | Navigate to the left pane (Tmux)             | `lua/plugins/tmux-navigator.lua`       |
| `C-j`       | Navigate to the bottom pane (Tmux)           | `lua/plugins/tmux-navigator.lua`       |
| `C-k`       | Navigate to the top pane (Tmux)              | `lua/plugins/tmux-navigator.lua`       |
| `C-l`       | Navigate to the right pane (Tmux)            | `lua/plugins/tmux-navigator.lua`       |
| `<C-p>`     | Find files with Telescope                    | `lua/plugins/telescope.lua`            |
| `<leader>tg`| Grep for a string with Telescope             | `lua/plugins/telescope.lua`            |
| `<leader>gf`| Format buffer                                | `lua/plugins/none-ls.lua`              |
| `<c-k>`     | Navigate to the top pane (Vim)               | `lua/vim-options.lua`                  |
| `<c-j>`     | Navigate to the bottom pane (Vim)            | `lua/vim-options.lua`                  |
| `<c-h>`     | Navigate to the left pane (Vim)              | `lua/vim-options.lua`                  |
| `<c-l>`     | Navigate to the right pane (Vim)             | `lua/vim-options.lua`                  |
| `<leader>td`| Find TODO comments with Telescope            | `lua/vim-options.lua`                  |

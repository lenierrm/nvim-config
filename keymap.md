# Neovim Keymaps

This file lists all the keymaps defined in your Neovim configuration.

| Keymap          | Action                                       | Mode   | File                                           |
| --------------- | -------------------------------------------- | ------ | ---------------------------------------------- |
| `<c-k>`         | `:wincmd k<CR>`                              | Normal | `lua/vim-options.lua`                          |
| `<c-j>`         | `:wincmd j<CR>`                              | Normal | `lua/vim-options.lua`                          |
| `<c-h>`         | `:wincmd h<CR>`                              | Normal | `lua/vim-options.lua`                          |
| `<c-l>`         | `:wincmd l<CR>`                              | Normal | `lua/vim-options.lua`                          |
| `<leader>td`    | `:TodoTelescope<CR>`                         | Normal | `lua/vim-options.lua`                          |
| `<leader>gf`    | `vim.lsp.buf.format`                         | Normal | `lua/plugins/none-ls.lua`                      |
| `<C-p>`         | `builtin.find_files`                         | Normal | `lua/plugins/telescope.lua`                    |
| `<leader>tg`    | `builtin.live_grep`                          | Normal | `lua/plugins/telescope.lua`                    |
| `C-h`           | `:TmuxNavigateLeft<CR>`                      | Normal | `lua/plugins/tmux-navigator.lua`               |
| `C-j`           | `:TmuxNavigateDown<CR>`                      | Normal | `lua/plugins/tmux-navigator.lua`               |
| `C-k`           | `:TmuxNavigateUp<CR>`                        | Normal | `lua/plugins/tmux-navigator.lua`               |
| `C-l`           | `:TmuxNavigateRight<CR>`                     | Normal | `lua/plugins/tmux-navigator.lua`               |
| `<C-n>`         | `:Neotree filesystem reveal left<CR>`        | Normal | `lua/plugins/neo-tree.lua`                     |
| `<leader>ts`    | `:TimerStop<CR>`                             | Normal | `lua/plugins/pendulum.lua`                     |
| `<leader>tp`    | `:TimerPause<CR>`                            | Normal | `lua/plugins/pendulum.lua`                     |
| `<leader>tr`    | `:TimerResume<CR>`                           | Normal | `lua/plugins/pendulum.lua`                     |
| `<leader>tre`   | `:TimerRestart<CR>`                          | Normal | `lua/plugins/pendulum.lua`                     |
| `<leader>tc`    | `:TimerTemplate<CR>`                         | Normal | `lua/plugins/pendulum.lua`                     |
| `<leader>sct`   | `:StartYourCustomTimer<CR>`                  | Normal | `lua/plugins/pendulum.lua`                     |
| `gd`            | `vim.lsp.buf.definition`                     | Normal | `lua/lsp/handlers.lua`                         |
| `gD`            | `vim.lsp.buf.declaration`                    | Normal | `lua/lsp/handlers.lua`                         |
| `gr`            | `vim.lsp.buf.references`                     | Normal | `lua/lsp/handlers.lua`                         |
| `gi`            | `vim.lsp.buf.implementation`                 | Normal | `lua/lsp/handlers.lua`                         |
| `K`             | `vim.lsp.buf.hover`                          | Normal | `lua/lsp/handlers.lua`                         |
| `<C-k>`         | `vim.lsp.buf.signature_help`                 | Normal | `lua/lsp/handlers.lua`                         |
| `<leader>rn`    | `vim.lsp.buf.rename`                         | Normal | `lua/lsp/handlers.lua`                         |
| `<leader>ca`    | `vim.lsp.buf.code_action`                    | Normal | `lua/lsp/handlers.lua`                         |
| `<leader>f`     | `function()`                                 | Normal | `lua/lsp/handlers.lua`                         |
| `<leader>e`     | `vim.diagnostic.open_float`                  | Normal | `init.lua`                                     |

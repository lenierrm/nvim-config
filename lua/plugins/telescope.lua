 return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 
          'nvim-lua/plenary.nvim',
          "rinx/nvim-ripgrep",
        },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set('n', '<C-p>', builtin.find_files, {})
            vim.keymap.set('n', '<leader>tg', builtin.live_grep, {})
            --vim.keymap.set('n', '<leader>tt', '<cmd>TodoTelescope<CR>', {})
        end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            require("telescope").setup {
              defaults={
                file_ignore_patterns = {"node_modules","vendor"},
                cwd = vim.fn.getcwd(),
              },    
              extensions = {
                ["ui-select"] = {require("telescope.themes").get_dropdown {}},
                ["todo-comments"]={},  
              }
            }
            require("telescope").load_extension("ui-select")
            require("telescope").load_extension("todo-comments") 
        end
    }
 }
 

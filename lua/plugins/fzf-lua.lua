return{
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  dependencies = { --"echasnovski/mini.icons" 
    "rinx/nvim-ripgrep",
    config = function()
      require("nvim-ripgrep").setup {
        -- your configurations here
      }
    end
  },
  opts = {
  },
  config = function(_, opts)
   --require('fzf-lua').files({}) 
    require('fzf-lua').setup({
      --fzf_opts = {
        --['--info']="inline-right",
      --},
      --winopts={border="none"},
      --tags={
        --rg_opts="--perl-regexp"
      --}
--default = {
        --cwd = vim.fn.getcwd(),
      --},
      --grep = { 
        --regex = true,
        --rg_opts = '--glob=!**/node_modules/** --glob=!**/git/** --glob=!**/dist/**',
      --},
      --live_grep = { regex = true },
    }) 
  end
}



return{
  "folke/todo-comments.nvim",
  dependencies = {
    {
      "nvim-lua/plenary.nvim",
      "tools-life/taskwiki",
      --ft = { "markdown", "vimwiki" },  -- Only loads for these file types
    }
  },
  event = "BufEnter",  -- Or other triggering event
  config = function()
    require("todo-comments").setup()
    require("plugins.integrations.todo2task").setup()
  end
}


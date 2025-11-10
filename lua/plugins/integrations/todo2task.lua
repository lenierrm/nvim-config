local M = {}

local defaults = {
  enabled = true,
  taskwarrior_cmd = "task",
  mapping = "<leader>tt",
  todo_patterns = {
    "TODO%s*[:%-]?%s*(.*)",
    "FIXME%s*[:%-]?%s*(.*)",
    "HACK%s*[:%-]?%s*(.*)",
    "WARNING%s*[:%-]?%s*(.*)",
    "FIX%s*[:%-]?%s*(.*)",
    "NOTE%s*[:%-]?%s*(.*)",
    "PERF%s*[:%-]?%s*(.*)",
    "TEST%s*[:%-]?%s*(.*)",
    "NOTE%s*[:%-]?%s*(.*)",
    "INFO%s*[:%-]?%s*(.*)",
  },
  default_tags = "+neovim",
  auto_project = true,
  project_patterns = {
    "/([^/]+)/[^/]+$",        -- matches "projectname" in "/path/to/projectname/file.ext"
    "/([^/]+)/[^/]+%..+$",    -- matches "projectname" in "/path/to/projectname/file.ext"
  },
}

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", defaults, opts or {})

  if not M.config.enabled then
    return
  end

  M._create_autocmds()
  M._create_commands()
  M._create_mappings()
end

function M._create_mappings()
  if M.config.mapping then
    vim.keymap.set("n", M.config.mapping, M.create_task_from_todo, {
      desc = "Create Taskwarrior task from TODO comment",
    })
  end
end

function M._create_commands()
  vim.api.nvim_create_user_command("Todo2Task", M.create_task_from_todo, {
    desc = "Convert current line's TODO to Taskwarrior task",
  })
end

function M._create_autocmds()
  vim.api.nvim_create_autocmd("FileType", {
    pattern = { "markdown", "text", "vimwiki" },
    callback = function()
      vim.keymap.set("n", M.config.mapping, M.create_task_from_todo, {
        buffer = true,
        desc = "Create Taskwarrior task from TODO",
      })
    end,
  })
end

function M._extract_project()
  local path = vim.fn.expand("%:p")
  for _, pattern in ipairs(M.config.project_patterns) do
    local project = path:match(pattern)
    if project then
      return "project:" .. project
    end
  end
  return ""
end

function M._clean_description(desc)
  return desc
    :gsub("%[%[(.-)%]%]", "%1")    -- Remove wiki links
    :gsub("%*%*(.-)%*%*", "%1")    -- Remove bold
    :gsub("%*(.-)%*", "%1")        -- Remove italics
    :gsub("^%s*(.-)%s*$", "%1")    -- Trim whitespace
end

function M.create_task_from_todo()
  local line = vim.api.nvim_get_current_line()
  local description = nil

  -- Check all configured patterns
  for _, pattern in ipairs(M.config.todo_patterns) do
    description = line:match(pattern)
    if description then break end
  end

  if not description then
    vim.notify("No supported TODO comment found", vim.log.levels.WARN)
    return
  end

  description = M._clean_description(description)
  local cmd_parts = { M.config.taskwarrior_cmd, "add", vim.fn.shellescape(description) }

  if M.config.auto_project then
    local project = M._extract_project()
    if project ~= "" then
      table.insert(cmd_parts, project)
    end
  end

  if M.config.default_tags then
    table.insert(cmd_parts, M.config.default_tags)
  end

  local cmd = table.concat(cmd_parts, " ")
  local output = vim.fn.system(cmd)
  vim.notify(output ~= "" and output or ("Created task: " .. description), vim.log.levels.INFO)
end

return M

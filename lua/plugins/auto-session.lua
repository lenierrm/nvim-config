return {
  'rmagatti/auto-session',
  enabled=false,
  --lazy = false,
  config = function()
    require('auto-session').setup()
  end,
  ---enables autocomplete for opts
  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
    -- log_level = 'debug',
  }
}

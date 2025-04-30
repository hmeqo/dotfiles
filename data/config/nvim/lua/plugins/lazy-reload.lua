local function get_plugins() return require("lazy.core.config").plugins end

local function reload_picked_plugin(selected)
  local lazy_loader = require "lazy.core.loader"
  lazy_loader.reload(selected)
  vim.notify(selected .. " reloaded", vim.log.levels.INFO, { title = "lazy-reload", icon = "" })
end

local function get_sorted_plugin_names()
  local plugins = {}
  for _, value in pairs(get_plugins()) do
    table.insert(plugins, value.name)
  end
  table.sort(plugins)
  return plugins
end

local function display_picker()
  vim.ui.select(get_sorted_plugin_names(), { prompt = "Select plugin to reload:" }, function(choice)
    if choice then reload_picked_plugin(choice) end
  end)
end

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    commands = {
      ReloadPlugin = {
        function(args)
          if args.args ~= "" then
            reload_picked_plugin(args.args)
          else
            display_picker()
          end
        end,
        desc = "Reload a plugin",
        nargs = "?",
        complete = function() return get_sorted_plugin_names() end,
      },
    },
    mappings = {
      n = {
        ["<Leader>pr"] = {
          function() display_picker() end,
          desc = "Reload plugin",
        },
      },
    },
  },
}

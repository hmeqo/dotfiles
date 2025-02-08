local function get_plugins() return require("lazy.core.config").plugins end

local function reload_picked_plugin()
  local action_state = require "telescope.actions.state"
  local lazy_loader = require "lazy.core.loader"

  local plugin = action_state.get_selected_entry()
  lazy_loader.reload(plugin.value)
  vim.notify(plugin.value .. " reloaded", vim.log.levels.INFO, { title = "lazy-reload", icon = "" })
end

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      n = {
        ["<Leader>pr"] = {
          function()
            local themes = require "telescope.themes"
            local finders = require "telescope.finders"
            local telescope_conf = require("telescope.config").values
            local pickers = require "telescope.pickers"
            local actions = require "telescope.actions"

            local picker_names = {}
            for _, value in pairs(get_plugins()) do
              table.insert(picker_names, value.name)
            end
            table.sort(picker_names, function(a, b) return a < b end)
            local opts = themes.get_dropdown {}
            pickers
              .new(opts, {
                prompt_title = "Reload Plugin",
                finder = finders.new_table {
                  results = picker_names,
                },
                sorter = telescope_conf.generic_sorter(opts),
                attach_mappings = function(_, map)
                  map({ "i", "n" }, "<C-r>", reload_picked_plugin)
                  map({ "i", "n" }, "<CR>", function(prompt_bufnr)
                    reload_picked_plugin()
                    actions.close(prompt_bufnr)
                  end)
                  return true
                end,
              })
              :find()
          end,
          desc = "Reload a plugin",
        },
      },
    },
  },
}

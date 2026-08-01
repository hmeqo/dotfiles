local default_opts = { instanceName = "main" }
local function grug_far_open(opts, with_visual)
  local grug_far = require "grug-far"
  opts = require("astrocore").extend_tbl(default_opts, opts or {})
  if not grug_far.has_instance(opts.instanceName) then
    grug_far.open(opts)
  else
    local inst = grug_far.get_instance(opts.instanceName)
    if not inst then return end
    if with_visual then
      if not opts.prefills then opts.prefills = {} end
      opts.prefills.search = grug_far.get_current_visual_selection()
    end
    inst:open()
    if opts.prefills then inst:update_input_values(opts.prefills, false) end
  end
end

---@type LazySpec
return {
  "MagicDuck/grug-far.nvim",
  cmd = { "GrugFar", "GrugFarWithin" },
  specs = {
    {
      "AstroNvim/astroui",
      ---@type AstroUIOpts
      opts = { icons = { GrugFar = "󰛔" } },
    },
    {
      "AstroNvim/astrocore",
      ---@param opts AstroCoreOpts
      opts = function(_, opts)
        local maps = opts.mappings or {}
        local prefix = "<Leader>s"

        maps.n = maps.n or {}
        maps.x = maps.x or {}

        maps.n[prefix] = { desc = require("astroui").get_icon("GrugFar", 1, true) .. "Search/Replace" }
        maps.n[prefix .. "s"] = {
          function() grug_far_open() end,
          desc = "Search/Replace workspace",
        }
        maps.n[prefix .. "e"] = {
          function()
            local ext = require("astrocore.buffer").is_valid() and vim.fn.expand "%:e" or ""
            grug_far_open {
              prefills = { filesFilter = ext ~= "" and "*." .. ext or nil },
            }
          end,
          desc = "Search/Replace filetype",
        }
        maps.n[prefix .. "f"] = {
          function()
            local filter = require("astrocore.buffer").is_valid() and vim.fn.fnameescape(vim.fn.expand "%") or nil
            grug_far_open { prefills = { paths = filter } }
          end,
          desc = "Search/Replace file",
        }
        maps.n[prefix .. "w"] = {
          function()
            local current_word = vim.fn.expand "<cword>"
            if current_word ~= "" then
              grug_far_open {
                startCursorRow = 4,
                prefills = { search = vim.fn.expand "<cword>" },
              }
            else
              vim.notify("No word under cursor", vim.log.levels.WARN, { title = "Grug-far" })
            end
          end,
          desc = "Replace current word",
        }
        maps.x[prefix] = { function() grug_far_open(nil, true) end, desc = "Replace selection" }
      end,
    },
    {
      "nvim-neo-tree/neo-tree.nvim",
      optional = true,
      opts = {
        commands = {
          grug_far_replace = function(state)
            local node = state.tree:get_node()
            grug_far_open {
              prefills = {
                paths = node.type == "directory" and node:get_id() or vim.fn.fnamemodify(node:get_id(), ":h"),
              },
            }
          end,
        },
        window = {
          mappings = {
            gS = "grug_far_replace",
          },
        },
      },
    },
  },
  opts = function(_, opts)
    opts.transient = true
    if not opts.icons then opts.icons = {} end
    if vim.g.icons_enabled == false then
      opts.icons.enabled = false
      opts.resultsSeparatorLineChar = "-"
      opts.spinnerStates = { "|", "\\", "-", "/" }
    end
  end,
}

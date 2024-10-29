local M = {}

---@param opts {enter_event: (string|string[])?, leave_event: (string|string[])?, on_enter: function?, on_leave: function?, ft: table?}
M.buf_enter_leave = function(opts)
  return {
    {
      event = opts.enter_event or "BufEnter",
      callback = function(args)
        if opts.ft and not vim.tbl_contains(opts.ft, vim.bo[args.buf].filetype) then return end
        if opts.on_enter then opts.on_enter(args) end
      end,
    },
    {
      event = opts.leave_event or "BufLeave",
      callback = function(args)
        if opts.ft and not vim.tbl_contains(opts.ft, vim.bo[args.buf].filetype) then return end
        if opts.on_leave then opts.on_leave(args) end
      end,
    },
  }
end

---@param opts {event: (string|string[])?, desc: string?, mappings: table, mappings_opts: table?, ft: table}
M.auto_map_filetype = function(opts)
  return {
    {
      event = opts.event or "BufEnter",
      desc = opts.desc,
      callback = function(args)
        if vim.tbl_contains(opts.ft, vim.bo[args.buf].filetype) then
          require("astrocore").set_mappings(opts.mappings, opts.mappings_opts or { buffer = args.buf })
        end
      end,
    },
  }
end

---@param opts {event: (string|string[])?, desc: string?, mappings: table, mappings_opts: table?, lsp_name: string}
M.auto_map_lsp = function(opts)
  return {
    {
      event = opts.event or "LspAttach",
      desc = opts.desc,
      callback = function(args)
        if assert(vim.lsp.get_client_by_id(args.data.client_id)).name == opts.lsp_name then
          require("astrocore").set_mappings(opts.mappings, opts.mappings_opts or { buffer = args.buf })
        end
      end,
    },
  }
end

return M

---@type LazySpec
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      follow_current_file = {
        -- enabled = true, -- This tells Neo-tree to find the file in the tree
      },
    },
  },
}

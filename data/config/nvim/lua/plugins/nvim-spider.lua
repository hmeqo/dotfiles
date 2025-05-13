---@type LazySpec
return {
  "chrisgrieser/nvim-spider",
  lazy = true,
  keys = {
    { ",w", function() require("spider").motion "w" end, mode = { "n", "o", "x" }, desc = "CamelCase motion w" },
    { ",e", function() require("spider").motion "e" end, mode = { "n", "o", "x" }, desc = "CamelCase motion e" },
    { ",b", function() require("spider").motion "b" end, mode = { "n", "o", "x" }, desc = "CamelCase motion b" },
  },
}

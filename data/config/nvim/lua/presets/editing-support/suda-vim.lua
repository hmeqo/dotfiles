---@type LazySpec
return {
  {
    "lambdalisue/suda.vim",
    dependencies = {
      {
        "AstroNvim/astrocore",
        ---@type AstroCoreOpts
        opts = {
          mappings = {
            n = {
              ["<Leader>s"] = { desc = "Suda" },
              ["<Leader>sr"] = { "<Cmd>SudaRead<CR>", desc = "Suda Read" },
              ["<Leader>sw"] = { "<Cmd>SudaWrite<CR>", desc = "Suda Write" },
            },
          },
          options = {
            g = {
              suda_smart_edit = 1,
            },
          },
        },
      },
    },
    cmd = { "SudaRead", "SudaWrite" },
  },
}

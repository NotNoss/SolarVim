return {
  "utilyre/barbecue.nvim",
  name = "barbecue",
  version = "*",
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  config = function()
    vim.opt.updatetime = 200
    require('barbecue').setup {
      theme = 'tokyonight'
    }
  end
}

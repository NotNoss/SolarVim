local M = {
  "folke/trouble.nvim",
  commit = "40aad004f53ae1d1ba91bcc5c29d59f07c5f01d3",
  dependencies = { "nvim-tree/nvim-web-devicons" }
}

function M.config()
  require("trouble").setup {}
end

return M

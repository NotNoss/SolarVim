local M = {
  "petertriho/nvim-scrollbar",
  event = "VeryLazy"
}

function M.config()
  require("scrollbar").setup {}
end

return M

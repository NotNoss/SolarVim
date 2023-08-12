local M = {
  "karb94/neoscroll.nvim"
}

function M.config()
  require("neoscroll").setup {
    hide_cursor = false
  }
end

return M

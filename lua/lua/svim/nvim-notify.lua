local M = {
  "rcarriga/nvim-notify",
  commit = "ea9c8ce7a37f2238f934e087c255758659948e0f",
  event = "VeryLazy"
}

function M.config()
  require("notify").setup {
    stages = 'fade_in_slide_out',
    background_colour = 'FloatShadow',
    timeout = 3000
  }
  vim.notify = require('notify')
end

return M

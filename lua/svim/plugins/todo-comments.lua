return {
  "folke/todo-comments.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  config = function()
    require("todo-comments").setup {
      signs = true,
      sign_priority = 8
    }
  end
}

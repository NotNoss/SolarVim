return {
  'akinsho/toggleterm.nvim',
  config = function()
    require("toggleterm").setup {
      size = 20,
      open_mapping = [[<c-\>]],
      direction = 'horizontal',
      shell = vim.o.shell
    }
  end
}

return {
  "alanfortlink/blackjack.nvim",
  config = function()
    require("blackjack").setup({
      card_style = "large",
      suit_style = "white",
    })
  end
}

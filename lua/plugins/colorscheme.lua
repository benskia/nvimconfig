return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    init = function()
      vim.cmd.colorscheme "rose-pine"
      vim.cmd.hi "Comment gui=none"
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end,
  },
}

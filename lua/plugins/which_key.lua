return {
  "folke/which-key.nvim",
  event = "VimEnter",

  config = function()
    require("which-key").setup()
    require("which-key").register {
      ["<leader>wkc"] = { name = "[C]ode", _ = "which_key_ignore" },
      ["<leader>wkd"] = { name = "[D]ocument", _ = "which_key_ignore" },
      ["<leader>wkr"] = { name = "[R]ename", _ = "which_key_ignore" },
      ["<leader>wks"] = { name = "[S]earch", _ = "which_key_ignore" },
      ["<leader>wkw"] = { name = "[W]orkspace", _ = "which_key_ignore" },
    }
  end,
}

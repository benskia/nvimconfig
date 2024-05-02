return {
  "nvim-lua/plenary.nvim",

  {
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = { signs = false },
  },

  { "folke/zen-mode.nvim", opts = {} },
  { "folke/twilight.nvim", opts = {} },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

  { "echasnovski/mini.align", version = "*", opts = {} },
  { "echasnovski/mini.comment", version = "*", opts = {} },
  { "echasnovski/mini.indentscope", version = "*", opts = {} },
  { "echasnovski/mini.move", version = "*", opts = {} },
  { "echasnovski/mini.pairs", version = "*", opts = {} },
  { "echasnovski/mini.splitjoin", version = "*", opts = {} },
  { "echasnovski/mini.statusline", version = "*", opts = {} },
  { "echasnovski/mini.surround", version = "*", opts = {} },

  "tpope/vim-fugitive",
  "tpope/vim-repeat",
  "tpope/vim-sleuth",
  "tpope/vim-speeddating",
  "tpope/vim-vinegar",

  "mbbill/undotree",
}

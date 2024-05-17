return {
  "nvim-lua/plenary.nvim",

  { "lewis6991/gitsigns.nvim",             opts = {} },

  {
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = { signs = false },
  },

  { "lukas-reineke/indent-blankline.nvim", main = "ibl",  opts = {} },

  { "echasnovski/mini.comment",            version = "*", opts = {} },
  { "echasnovski/mini.move",               version = "*", opts = {} },
  { "echasnovski/mini.pairs",              version = "*", opts = {} },
  { "echasnovski/mini.statusline",         version = "*", opts = {} },
  { "echasnovski/mini.surround",           version = "*", opts = {} },

  "tpope/vim-fugitive",
  "tpope/vim-repeat",
  "tpope/vim-sleuth",
  "tpope/vim-speeddating",
  "tpope/vim-vinegar",

  "mbbill/undotree",
}

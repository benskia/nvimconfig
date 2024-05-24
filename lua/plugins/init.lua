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

  { "echasnovski/mini.move",               version = "*", opts = {} },
  { "echasnovski/mini.statusline",         version = "*", opts = {} },
  { "echasnovski/mini.surround",           version = "*", opts = {} },

  "tpope/vim-fugitive",
  "tpope/vim-repeat",
  "tpope/vim-sleuth",
  "tpope/vim-speeddating",
  "tpope/vim-vinegar",

  "mbbill/undotree",

  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },

  "fladson/vim-kitty",
}

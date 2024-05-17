return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "vim",
      "vimdoc",
      "lua",
      "luadoc",
      "c",
      "cpp",
      "go",
      "python",
      "rust",
      "zig",
    },
    highlight = {
      enable = true,
      use_languagetree = true,
    },
    indent = { enable = true },
  },
}

local map = function(keys, func, desc)
  return vim.keymap.set("n", keys, func, { desc = "Harpoon " .. desc })
end

return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function(_, opts)
    local harpoon = require "harpoon"
    harpoon:setup(opts)

    map("<leader>a", function()
      harpoon:list():add()
    end, "Add file to harpoon list")
    map("<C-e>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, "Toggle harpoon list")

    map("<C-h>", function()
      harpoon:list():select(1)
    end, "Jump to harpoon file 1")
    map("<C-j>", function()
      harpoon:list():select(2)
    end, "Jump to harpoon file 2")
    map("<C-k>", function()
      harpoon:list():select(3)
    end, "Jump to harpoon file 3")
    map("<C-l>", function()
      harpoon:list():select(4)
    end, "Jump to harpoon file 4")

    map("<C-S-P>", function()
      harpoon:list():prev()
    end, "Toggle previous harpoon buffer")
    map("<C-S-N>", function()
      harpoon:list():next()
    end, "Toggle next harpoon buffer")
  end,
}

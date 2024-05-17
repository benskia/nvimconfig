local map = function(mode, keys, func, desc)
  desc = desc or ""
  vim.keymap.set(mode, keys, func, { desc = desc })
end

-- position cursor
map("n", "J", "mzJ`z", "Restores position after appending next line.")
map("n", "<C-d>", "<C-d>zz", "Centers position after 1/2page down.")
map("n", "<C-u>", "<C-u>zz", "Centers position after 1/2page up.")
map("n", "n", "nzzzv", "Centers position after find next.")
map("n", "N", "Nzzzv", "Centers position after find prev.")

-- find & replace
map("n", "<leader>rN", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "find and replace all")

-- higlighting
map("n", "<Esc>", "<cmd>nohlsearch<CR>", "Clear search highlighting.")

-- lsp diagnostics
map("n", "[d", vim.diagnostic.goto_prev, "Prev diagnostic message.")
map("n", "]d", vim.diagnostic.goto_next, "Next diagnostic message.")
map("n", "<leader>e", vim.diagnostic.open_float, "Show diagnostic error message.")
map("n", "<leader>q", vim.diagnostic.setloclist, "Open quickfix list.")

-- buffers
map("n", "<leader>b", "<cmd> enew <CR>", "Buffer New")
map("n", "<leader>x", "<cmd> bdelete <CR>", "Buffer Delete")
map("n", "<tab>", "<cmd> bnext <CR>", "Buffer Goto next")
map("n", "<S-tab>", "<cmd> bprevious <CR>", "Buffer Goto prev")

-- terminal
map("n", "<leader>ts", "<C-w>s <cmd> terminal <CR>", "Terminal New horizontal term")
map("n", "<leader>tv", "<C-w>v <cmd> terminal <CR>", "Terminal New vertical term")

-- plugins
map("n", "<leader>u", vim.cmd.UndotreeToggle, "Toggle Undotree")

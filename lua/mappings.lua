local map = vim.keymap.set

-- center cursor after paging up/down
map("n", "J", "mzJ`z")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- delete to void register
map("x", "<leader>p", '"_dP')
map("n", "<leader>d", '"_d')
map("v", "<leader>d", '"_d')

-- input to normal mode
map("i", "jk", "<Esc>")

-- clear search highlighting
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- lsp diagnostics
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
map("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- tabufline
map("n", "<leader>b", "<cmd> enew <CR>", { desc = "Buffer New" })
map("n", "<leader>x", "<cmd> bdelete <CR>", { desc = "Buffer Delete" })
map("n", "<tab>", "<cmd> bnext <CR>", { desc = "Buffer Goto next" })
map("n", "<S-tab>", "<cmd> bprevious <CR>", { desc = "Buffer Goto prev" })

-- terminal
map("t", "<C-x>", "<C-\\><C-n>", { desc = "Terminal Escape terminal mode" })
map("n", "<leader>th", "<C-w>s <cmd> terminal <CR>", { desc = "Terminal New horizontal term" })
map("n", "<leader>ts", "<C-w>v <cmd> terminal <CR>", { desc = "Terminal New vertical term" })

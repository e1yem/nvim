local keymap = vim.keymap.set

-- Consistent Esc
keymap("i", "<C-c>", "<Esc>", { desc = "C-c acts like Esc" })

-- Better paste
keymap("x", "p", '"_dP', { desc = "Keep paste buffer" })

-- Start/end of line
keymap({ "n", "v" }, "H", "^", { desc = "Cursor to start of line" })
keymap({ "n", "v" }, "L", "g_", { desc = "Cursor to end of line" })

-- Join line
keymap("n", "J", "mzJ`z", { desc = "Join next line" })

-- Select all
keymap("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- Split window
keymap("n", "<leader>-", "<C-W>s", { desc = "Split below" })
keymap("n", "<leader>|", "<C-W>v", { desc = "Split right" })

-- Clear search with <esc>
keymap({ "i", "n" }, "<esc>", "<Cmd>nohlsearch<CR><Esc>", { desc = "Escape and clear hlsearch" })

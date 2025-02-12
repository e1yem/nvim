-- Keymaps
-- Close buffer
local close_buffer = function()
    if vim.fn.len(vim.fn.filter(vim.fn.range(2, vim.fn.bufnr('$')), 'buflisted(v:val)')) == 1 then
        vim.cmd("lua MiniStarter.open()")
    else
        vim.cmd("bd")
    end
end
vim.keymap.set("n", "<C-w>", close_buffer, { desc = "Close current buffer" })

-- Consistent Esc
vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "C-c acts like Esc" })

-- Better paste
vim.keymap.set("x", "p", '"_dP', { desc = "Keep paste buffer" })

-- Start/end of line
vim.keymap.set({ "n", "v" }, "H", "^", { desc = "Move cursor to start line" })
vim.keymap.set({ "n", "v" }, "L", "g_", { desc = "Move cursor to end line" })

-- Join line
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join next line" })

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- Split window
vim.keymap.set("n", "<leader>-", "<C-W>s", { desc = "Split below" })
vim.keymap.set("n", "<leader>|", "<C-W>v", { desc = "Split right" })

-- Search
vim.keymap.set("n", "<C-f>", ":/", { desc = "Search" })
vim.keymap.set("n", "<C-F>", ":%s/", { desc = "Search and replace" })

-- Clear search with <esc>
vim.keymap.set({ "i", "n" }, "<esc>", "<Cmd>nohlsearch<CR><Esc>", { desc = "Escape and clear hlsearch" })

-- Plugin keymaps
-- Toggle MiniFiles
local minifiles_toggle = function(...)
    if not MiniFiles.close() then MiniFiles.open(...) end
end
vim.keymap.set("n", "<C-S-e>", minifiles_toggle, { desc = "Toggle MiniFiles" })

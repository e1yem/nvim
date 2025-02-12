local path_package = vim.fn.stdpath('data') .. '/site/'
local mini_path = path_package .. 'pack/deps/start/mini.nvim'

if not vim.loop.fs_stat(mini_path) then
    vim.cmd('echo "Installing `mini.nvim`" | redraw')
    local clone_cmd = {
        'git', 'clone', '--filter=blob:none',
        'https://github.com/echasnovski/mini.nvim', mini_path
    }
    vim.fn.system(clone_cmd)
    vim.cmd('packadd mini.nvim | helptags ALL')
    vim.cmd('echo "Installed `mini.nvim`" | redraw')
end

require('mini.deps').setup({ path = { package = path_package } })

local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later

-- now(function() vim.cmd.colorscheme("minischeme") end)

add({ source = "navarasu/onedark.nvim" })
-- now(function() require("onedark").load() end)

add({ source = "catppuccin/nvim", name = "catppuccin" })
-- now(function() vim.cmd.colorscheme("catppuccin") end)

add({ source = "sainnhe/everforest" })
-- now(function() vim.cmd.colorscheme("everforest") end)

add({ source = "rose-pine/neovim", name = "rose-pine" })
-- now(function() vim.cmd.colorscheme("rose-pine") end)

add({ source = "loctvl842/monokai-pro.nvim" })
-- now(function()
--     require("monokai-pro").setup({
--         filter = "pro"
--     })
--
--     vim.cmd.colorscheme("monokai-pro")
-- end)

add({
    source = "nvim-treesitter/nvim-treesitter",
    checkout = "master",
    monitor = "main",
    hooks = { post_checkout = function() vim.cmd("TSUpdate") end }
})
now(function()
    require("nvim-treesitter.configs").setup({
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html" },
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
        indent = {
            enable = true
        }
    })
end)

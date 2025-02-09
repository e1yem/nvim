return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = { "lua", "vim", "vimdoc", "markdown", "markdown_inline" },

        auto_install = true,

        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false
        }
    },
    config = function(_, opts)
        require("nvim-treesitter").setup(opts)
    end
}

-- Neovim Highlight Groups and Tree-sitter Capture Names
-- Use this template to build your own theme.

local colors = {
    fg = {
        editor = "#bccde6",
        panel = "#90a1bb",
        float = "#a8b7cc",
        focus = "#eef4fb",
        obscure = "#61738f",
        punctuation = "#7b8da7"
    },
    bg = {
        editor = "#0d1116",
        panel = "#161b22",
        float = "#2c343f"
    },
    border = {
        panel = "#2f343c",
        float = "#9fafc6"
    },
    syntax = {
        red = "#FF787C",
        purple = "#CA99FF",
    }
}

-- General UI Elements
-- normal
vim.api.nvim_set_hl(0, "Normal", { bg = colors.bg.editor, fg = colors.fg.editor })
vim.api.nvim_set_hl(0, "NormalNC", {})
-- float
vim.api.nvim_set_hl(0, "NormalFloat", { bg = colors.bg.panel, fg = colors.fg.panel })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = colors.bg.panel, fg = colors.border.panel })
vim.api.nvim_set_hl(0, "FloatTitle", { fg = colors.fg.focus })
vim.api.nvim_set_hl(0, "FloatShadow", {})
-- cursor
vim.api.nvim_set_hl(0, "Cursor", {})
vim.api.nvim_set_hl(0, "CursorLine", {})
vim.api.nvim_set_hl(0, "CursorColumn", {})
-- line number
vim.api.nvim_set_hl(0, "LineNr", { fg = colors.fg.obscure })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.fg.focus })
vim.api.nvim_set_hl(0, "SignColumn", {})
vim.api.nvim_set_hl(0, "FoldColumn", {})
vim.api.nvim_set_hl(0, "Folded", {})
vim.api.nvim_set_hl(0, "VertSplit", {})
vim.api.nvim_set_hl(0, "WinSeparator", {})
vim.api.nvim_set_hl(0, "StatusLine", {})
vim.api.nvim_set_hl(0, "StatusLineNC", {})
vim.api.nvim_set_hl(0, "WildMenu", {})
vim.api.nvim_set_hl(0, "Pmenu", {})
vim.api.nvim_set_hl(0, "PmenuSel", {})
vim.api.nvim_set_hl(0, "PmenuSbar", {})
vim.api.nvim_set_hl(0, "PmenuThumb", {})

-- Syntax Highlighting
vim.api.nvim_set_hl(0, "Comment", { fg = colors.fg.obscure })
vim.api.nvim_set_hl(0, "Delimiter", {})
vim.api.nvim_set_hl(0, "Constant", {})
vim.api.nvim_set_hl(0, "String", {})
vim.api.nvim_set_hl(0, "Character", {})
vim.api.nvim_set_hl(0, "Number", {})
vim.api.nvim_set_hl(0, "Boolean", {})
vim.api.nvim_set_hl(0, "Float", {})
vim.api.nvim_set_hl(0, "Identifier", {})
vim.api.nvim_set_hl(0, "Function", { fg = colors.syntax.purple })
vim.api.nvim_set_hl(0, "Statement", {})
vim.api.nvim_set_hl(0, "Conditional", {})
vim.api.nvim_set_hl(0, "Repeat", {})
vim.api.nvim_set_hl(0, "Label", {})
vim.api.nvim_set_hl(0, "Operator", {})
vim.api.nvim_set_hl(0, "Keyword", { fg = colors.syntax.red })
vim.api.nvim_set_hl(0, "Exception", {})
vim.api.nvim_set_hl(0, "PreProc", {})
vim.api.nvim_set_hl(0, "Include", {})
vim.api.nvim_set_hl(0, "Define", {})
vim.api.nvim_set_hl(0, "Macro", {})
vim.api.nvim_set_hl(0, "Type", {})
vim.api.nvim_set_hl(0, "StorageClass", {})
vim.api.nvim_set_hl(0, "Structure", {})
vim.api.nvim_set_hl(0, "Typedef", {})
vim.api.nvim_set_hl(0, "Special", {})

-- Tree-sitter Capture Groups
vim.api.nvim_set_hl(0, "@comment", { link = "Comment" })
vim.api.nvim_set_hl(0, "@constant", {})
vim.api.nvim_set_hl(0, "@constant.builtin", {})
vim.api.nvim_set_hl(0, "@constant.macro", {})
vim.api.nvim_set_hl(0, "@string", {})
vim.api.nvim_set_hl(0, "@string.escape", {})
vim.api.nvim_set_hl(0, "@string.special", {})
vim.api.nvim_set_hl(0, "@character", {})
vim.api.nvim_set_hl(0, "@number", {})
vim.api.nvim_set_hl(0, "@boolean", {})
vim.api.nvim_set_hl(0, "@float", {})
vim.api.nvim_set_hl(0, "@function", { link = "Function"})
vim.api.nvim_set_hl(0, "@function.builtin", {})
vim.api.nvim_set_hl(0, "@function.macro", {})
vim.api.nvim_set_hl(0, "@parameter", {})
vim.api.nvim_set_hl(0, "@variable", {})
vim.api.nvim_set_hl(0, "@variable.builtin", {})
vim.api.nvim_set_hl(0, "@variable.parameter", {})
vim.api.nvim_set_hl(0, "@type", {})
vim.api.nvim_set_hl(0, "@type.definition", {})
vim.api.nvim_set_hl(0, "@keyword", { fg = colors.syntax.red })
vim.api.nvim_set_hl(0, "@keyword.function", {})
vim.api.nvim_set_hl(0, "@keyword.operator", {})
vim.api.nvim_set_hl(0, "@keyword.return", {})
vim.api.nvim_set_hl(0, "@operator", {})
vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = colors.fg.punctuation })
vim.api.nvim_set_hl(0, "@punctuation.delimiter", {})
vim.api.nvim_set_hl(0, "@punctuation.bracket", {})
vim.api.nvim_set_hl(0, "@tag", {})
vim.api.nvim_set_hl(0, "@tag.attribute", {})
vim.api.nvim_set_hl(0, "@attribute", {})
vim.api.nvim_set_hl(0, "@namespace", {})
vim.api.nvim_set_hl(0, "@module", {})
vim.api.nvim_set_hl(0, "@error", {})

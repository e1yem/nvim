-- Define mini modules and opts
local mini_modules = {
	-- text editing
	"ai",
	"align",
	"comment",
	"completion",
	"move",
	"operators",
	"pairs",
	"snippets",
	"splitjoin",
	"surround",
	-- general workflow
	[ "basics" ] = {
		mappings = {
			windows = true,
			move_with_alt = true
		},
		autocommands = {
			relnum_in_visual_mode = true
		}
	},
	"bracketed",
	"bufremove",
	"clue",
	"diff",
	"extra",
	"files",
	"git",
	"jump",
	"jump2d",
	"misc",
	"pick",
	"sessions",
	"visits",
	-- appearance
	"animate",
	"cursorword",
	"hipatterns",
	"icons",
	"indentscope",
	"map",
	"notify",
	"starter",
	"statusline",
	"tabline",
	"trailspace",
	-- other
	"fuzzy"
}

-- Autosetup mini modules
for k, v in pairs(mini_modules) do
	if type(v) == "table" then
		local mini_module, opts = "mini." .. k, v
		require(mini_module).setup(opts)
	else
		local mini_module = "mini." .. v
		require(mini_module).setup()
	end
end

-- Additional mini module setup
vim.notify = require('mini.notify').make_notify()

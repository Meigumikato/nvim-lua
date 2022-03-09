
require('catppuccin').setup{
	transparent_background = false,
	term_colors = false,
	styles = {
		--comments = "italic",
		--functions = "italic",
		keywords = "italic",
		strings = "NONE",
		variables = "normal",
	},
	integrations = {
		treesitter = true,
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = "italic",
				hints = "italic",
				warnings = "italic",
				information = "italic",
		},
		underlines = {
			errors = "underline",
			hints = "underline",
			warnings = "underline",
			information = "underline",
		},
		nvimtree = {
			enabled = true,
			show_root = true, -- makes the root folder not transparent
			transparent_panel = false, -- make the panel transparent
		}
	},
	cmp = true,
	gitsigns = true,
	telescope = true,
	nvimtree = {
		enabled = true,
		show_root = false,
		transparent_panel = false,
	},
	which_key = false,
	indent_blankline = {
		enabled = true,
		colored_indent_levels = false,
	},
	bufferline = true,
	markdown = true,
	lightspeed = false,
	hop = false,
	notify = true,
}
}

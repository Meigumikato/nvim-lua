require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {
			'mode',
		},
    lualine_b = {
			'branch',
			{
				'diff',
				colored = true, -- Displays a colored diff status if set to true
				-- diff_color = {
				-- 	-- Same color values as the general color option can be used here.
				-- 	added    = 'DiffAdd',    -- Changes the diff's added color
				-- 	modified = 'DiffChange', -- Changes the diff's modified color
				-- 	removed  = 'DiffDelete', -- Changes the diff's removed color you
				-- },
				symbols = {added = '+', modified = '~', removed = '-'}, -- Changes the symbols used by the diff.
				source = nil, -- A function that works as a data source for diff.
											-- It must return a table as such:
											--   { added = add_count, modified = modified_count, removed = removed_count }
											-- or nil on failure. count <= 0 won't be displayed.
			},
			'diagnostics'
		},
    lualine_c = {
			{
				'filename',
				file_status = true,      -- Displays file status (readonly status, modified status)
				path = 1,                -- 0: Just the filename
																-- 1: Relative path
																-- 2: Absolute path
				shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
																-- for other components. (terrible name, any suggestions?)
				symbols = {
					modified = '[+]',      -- Text to show when the file is modified.
					readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
					unnamed = '[No Name]', -- Text to show for unnamed buffers.
				}
			}
		},
		lualine_x = {
			'encoding',
			{
				'fileformat',
				symbols = {
					unix = '', -- e712
					dos = '',  -- e70f
					mac = '',  -- e711
				}
			},
			{
				'filetype',
				colored = true,   -- Displays filetype icon in color if set to true
				icon_only = false -- Display only an icon for filetype
			}
		},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {'nvim-tree', 'toggleterm'}
}

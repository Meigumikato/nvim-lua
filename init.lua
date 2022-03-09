-- _   _ ___ ____ _______     _____ __  __
--| \ | |_ _/ ___| ____\ \   / /_ _|  \/  |
--|  \| || | |   |  _|  \ \ / / | || |\/| |
--| |\  || | |___| |___  \ V /  | || |  | |
--|_| \_|___\____|_____|  \_/  |___|_|  |_|
--



-- basic
require('base/base_config')
require('base/key_map')
require('base/plugins')

--  plugin config
require('code/nvim_treesitter')
require('code/todo_comments')
require('code/snippets')
require('code/comment')
require('code/indent')

-- code help utils
require('utils/gitsign')
require('utils/autopair')
require('utils/trouble')
require('utils/notify')
require('utils/telescope')

-- layout widget
-- require('widget/start')
require('widget/nvim_tree')
require('widget/bufferline')
require('widget/lualine')
require('widget/toggleterm')

-- color theme
require('color/tokyonight')
require('color/catppuccin')

-- lsp and complete
require('lsp/cmp')
require('lsp/common')
require('lsp/ccls')
require('lsp/cmake')
require('lsp/lua')
require('lsp/bash')
require('lsp/go')

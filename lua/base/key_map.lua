local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }


-- base map
map('n', '<Space>wh', '<C-w>h', opt)
map('n', '<Space>wl', '<C-w>l', opt)
map('n', '<Space>wj', '<C-w>j', opt)
map('n', '<Space>wk', '<C-w>k', opt)
map('n', '<Space>s', ':w<CR>', opt)
map('n', '<Space>q', ':bd<CR>', opt)
map('n', '<Space>Q', ':qall<CR>', opt)

-- nvimTree
map('n', '<Space>e', ':NvimTreeToggle<CR>', opt)


-- buffer line
map("n", "<Space><left>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<Space><right>", ":BufferLineCycleNext<CR>", opt)
map("n", "<Space>1", "<Cmd>BufferLineGoToBuffer 1<CR>", opt)
map("n", "<Space>2", "<Cmd>BufferLineGoToBuffer 2<CR>", opt)
map("n", "<Space>3", "<Cmd>BufferLineGoToBuffer 3<CR>", opt)
map("n", "<Space>4", "<Cmd>BufferLineGoToBuffer 4<CR>", opt)
map("n", "<Space>5", "<Cmd>BufferLineGoToBuffer 5<CR>", opt)
map("n", "<Space>6", "<Cmd>BufferLineGoToBuffer 6<CR>", opt)
map("n", "<Space>7", "<Cmd>BufferLineGoToBuffer 7<CR>", opt)
map("n", "<Space>8", "<Cmd>BufferLineGoToBuffer 8<CR>", opt)
map("n", "<Space>9", "<Cmd>BufferLineGoToBuffer 9<CR>", opt)
map("n", "bc", "<Cmd>BufferLinePickClose <CR>", opt)
map("n", "bp", "<Cmd>BufferLinePick <CR>", opt)

-- telescope
map("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", opt)
map("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", opt)
map("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffer()<cr>", opt)
map("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", opt)

-- which key
map("n", "<leader>wq", ":WhichKey <Space><CR>", opt)

-- gitsigns
-- Navigation
map('n', ']c', "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", {expr=true})
map('n', '[c', "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", {expr=true})

-- Actions
map('n', '<leader>hs', ':Gitsigns stage_hunk<CR>', opt)
map('v', '<leader>hs', ':Gitsigns stage_hunk<CR>', opt)
map('n', '<leader>hr', ':Gitsigns reset_hunk<CR>', opt)
map('v', '<leader>hr', ':Gitsigns reset_hunk<CR>', opt)
map('n', '<leader>hS', '<cmd>Gitsigns stage_buffer<CR>', opt)
map('n', '<leader>hu', '<cmd>Gitsigns undo_stage_hunk<CR>', opt)
map('n', '<leader>hR', '<cmd>Gitsigns reset_buffer<CR>', opt)
map('n', '<leader>hp', '<cmd>Gitsigns preview_hunk<CR>', opt)
map('n', '<leader>hb', '<cmd>Gitsigns blame_line<CR>', opt)
map('n', '<leader>tb', '<cmd>Gitsigns toggle_current_line_blame<CR>', opt)
map('n', '<leader>hd', '<cmd>Gitsigns diffthis<CR>', opt)
map('n', '<leader>hD', '<cmd>lua require"gitsigns".diffthis("~")<CR>', opt)
map('n', '<leader>td', '<cmd>Gitsigns toggle_deleted<CR>', opt)
-- Text object
map('o', 'ih', ':<C-U>Gitsigns select_hunk<CR>', opt)
map('x', 'ih', ':<C-U>Gitsigns select_hunk<CR>', opt)

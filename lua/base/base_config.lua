vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true
vim.o.autoindent = true

vim.wo.number = true
vim.wo.relativenumber = true

vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

vim.o.syntax = 'on'
vim.o.updatetime = 250
vim.o.termguicolors = true

-- vim.g.lsp_cxx_hl_use_text_props = true
vim.cmd [[ autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif]]

vim.cmd[[colorscheme tokyonight]]
-- vim.cmd[[colorscheme catppuccin]]
-- vim.cmd[[colorscheme deus]]
-- vim.cmd[[colorscheme gruvbox]]

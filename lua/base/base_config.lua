
-- 缩进2个空格等于一个Tab
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true

-- 使用相对行号
vim.wo.number = true
vim.wo.relativenumber = true

-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false


vim.o.syntax = 'on'
vim.o.termguicolors = true

vim.cmd [[ autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif]]

vim.cmd[[colorscheme tokyonight]]
-- vim.cmd[[colorscheme catppuccin]]
-- vim.cmd[[colorscheme deus]]
-- vim.cmd[[colorscheme gruvbox]]

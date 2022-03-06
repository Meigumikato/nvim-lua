


" basic
lua require('base_config')
lua require('key_map')
lua require('plugins')


" lua plugin config

lua require('plugconfig/nvim_tree')
lua require('plugconfig/bufferline')
lua require('plugconfig/nvim_treesitter')
lua require('plugconfig/comment')
lua require('plugconfig/lualine')
lua require('plugconfig/tokyonight')
lua require('plugconfig/gitsign')
lua require('plugconfig/autopair')
lua require('plugconfig/toggleterm')
lua require('plugconfig/trouble')
lua require('plugconfig/cmp')
lua require('plugconfig/todo_comments')
lua require('plugconfig/snippets')

" vim plugin config

"source ~/.config/nvim/vim/plugconfig/coc_nvim.vim

" lsp config
lua require('lsp/common')
lua require('lsp/ccls')
lua require('lsp/cmake')
lua require('lsp/lua')
lua require('lsp/bash')

filetype plugin indent on
" open file restore cursor location
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif



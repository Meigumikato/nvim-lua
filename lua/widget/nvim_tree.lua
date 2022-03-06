vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_add_trailing = 0
vim.g.nvim_tree_highlight_opened_files = 0
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_hide_dotfiles = 1

vim.g.nvim_tree_show_icons = {
  git = 1,
  folders = 1, -- or 0,
  files = 1, -- or 0,
  folder_arrows = 0 -- or 0
}
require'nvim-tree'.setup {
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = ""
    }
  },
  filters = {dotfiles = true},
  disable_netrw = true,
  hijack_netrw = true,
  ignore_ft_on_setup = {"dashboard"},
  auto_close = true,
  open_on_tab = false,
  hijack_cursor = true,
  update_cwd = true,
  update_focused_file = {enable = true, update_cwd = false},
  view = {allow_resize = true, side = "left", width = 25},

  git = {enable = true, ignore = true, timeout = 500}
}
vim.g.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    deleted = "",
    ignored = "◌",
    renamed = "➜",
    staged = "✓",
    unmerged = "",
    unstaged = "✗",
    untracked = "★"
  },
  folder = {
    -- disable indent_markers option to get arrows working or if you want both arrows and indent then just add the arrow icons in front            ofthe default and opened folders below!
    -- arrow_open = "",
    -- arrow_closed = "",
    default = "",
    empty = "", -- 
    empty_open = "",
    open = "",
    symlink = "",
    symlink_open = ""
  }
}

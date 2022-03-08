vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_add_trailing = 0
vim.g.nvim_tree_highlight_opened_files = 0
vim.g.nvim_tree_indent_markers = 1
-- vim.g.nvim_tree_auto_open = 0
-- vim.g.nvim_tree_auto_close = 1
-- vim.g.nvim_tree_quit_on_open = 1
-- vim.g.nvim_tree_hide_dotfiles = 1

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

-- default mappings
local list = {
  -- { key = {"<CR>", "o", "<2-LeftMouse>"}, action = "edit" },
  -- { key = "<C-e>",                        action = "edit_in_place" },
  -- { key = {"O"},                          action = "edit_no_picker" },
  { key = {"<CR>"},    action = "cd" },
  -- { key = "<C-v>",                        action = "vsplit" },
  -- { key = "<C-x>",                        action = "split" },
  -- { key = "<C-t>",                        action = "tabnew" },
  -- { key = "<",                            action = "prev_sibling" },
  -- { key = ">",                            action = "next_sibling" },
  -- { key = "P",                            action = "parent_node" },
  -- { key = "<BS>",                         action = "close_node" },
  -- { key = "<Tab>",                        action = "preview" },
  -- { key = "K",                            action = "first_sibling" },
  -- { key = "J",                            action = "last_sibling" },
  -- { key = "I",                            action = "toggle_ignored" },
  -- { key = "H",                            action = "toggle_dotfiles" },
  -- { key = "R",                            action = "refresh" },
  -- { key = "a",                            action = "create" },
  -- { key = "d",                            action = "remove" },
  -- { key = "D",                            action = "trash" },
  -- { key = "r",                            action = "rename" },
  -- { key = "<C-r>",                        action = "full_rename" },
  -- { key = "x",                            action = "cut" },
  -- { key = "c",                            action = "copy" },
  -- { key = "p",                            action = "paste" },
  -- { key = "y",                            action = "copy_name" },
  -- { key = "Y",                            action = "copy_path" },
  -- { key = "gy",                           action = "copy_absolute_path" },
  -- { key = "[c",                           action = "prev_git_item" },
  -- { key = "]c",                           action = "next_git_item" },
  -- { key = "-",                            action = "dir_up" },
  -- { key = "s",                            action = "system_open" },
  -- { key = "q",                            action = "close" },
  -- { key = "g?",                           action = "toggle_help" },
  -- { key = "W",                            action = "collapse_all" },
  -- { key = "S",                            action = "search_node" },
  -- { key = "<C-k>",                        action = "toggle_file_info" },
}

vim.g.nvim_tree_show_icons = {
  git = 1,
  folders = 1, -- or 0,
  files = 1, -- or 0,
  folder_arrows = 1 -- or 0
}
require'nvim-tree'.setup {
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = ""
    }
  },
  filters = {dotfiles = true, custom = {}},
  disable_netrw = true,
  hijack_netrw = true,
  ignore_ft_on_setup = {"dashboard"},
  auto_close = true,
  open_on_tab = false,
	open_on_setup = false,
  hijack_cursor = true,
  update_cwd = true,
  update_focused_file = {enable = true, update_cwd = false},
	view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    preserve_window_proportions = false,
    mappings = {
      custom_only = false,
      list = list
    },
		allow_resize = true,
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },

  git = {enable = true, ignore = true, timeout = 500},

	actions = {
    change_dir = {
      enable = true,
      global = false,
    },
    open_file = {
      quit_on_open = true,
      resize_window = false,
      window_picker = {
        enable = true,
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame", },
          buftype  = { "nofile", "terminal", "help", },
        }
      }
    }
  }
}



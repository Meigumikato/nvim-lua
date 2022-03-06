
local on_attach = require('lsp.common')
require'lspconfig'.bashls.setup({

	on_attach = on_attach,
	flags = {
  -- This will be the default in neovim 0.7+
    debounce_text_changes = 150,
  }
})

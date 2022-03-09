require('lsp.common')
local on_attach = On_attach
local handlers = Handlers
local capabilities = require('lsp.cmp')
require'lspconfig'.gopls.setup({
	cmd = {'/Users/mirac1e/.local/share/nvim/lsp_servers/go/gopls'},
	capabilities = capabilities,
	handlers = handlers,
	on_attach = on_attach,
	flags = {
  -- This will be the default in neovim 0.7+
    debounce_text_changes = 150,
  }
})

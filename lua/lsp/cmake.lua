require('lsp.common')
local on_attach = On_attach
local handlers = Handlers
local capabilities = require('lsp.cmp')
require'lspconfig'.cmake.setup({
	capabilities = capabilities,
	handlers = handlers,
	on_attach = on_attach,

	cmd = {'/Users/mirac1e/.local/share/nvim/lsp_servers/cmake/venv/bin/cmake-language-server'},

	flags = {
  -- This will be the default in neovim 0.7+
    debounce_text_changes = 150,
  }
})

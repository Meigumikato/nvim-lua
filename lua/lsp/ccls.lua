require('lsp.common')
local on_attach = On_attach
local handlers = Handlers
local capabilities = require('lsp.cmp')


-- local lsp = require('lspconfig')
require('lspconfig').ccls.setup ({
	capabilities = capabilities,
	on_attach = on_attach,
	handlers = handlers,
  flags = {
    -- This will be the default in neovim 0.7+
    debounce_text_changes = 150,
  },
  init_options = {
		highlight = {
      lsRanges = true;
    };
    cache = {
      directory = ".ccls-cache";
    };
		clang = {
			extraArgs = {'-stdc++=20'};
      excludeArgs = {'-frounding-math'} ;
    };
		compilationDatabaseDirectory = "build";
		filetypes = { "c", "cpp"};
		-- root_dir = lsp.util.root_pattern(".ccls");
  }
})

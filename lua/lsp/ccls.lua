require('lsp.common')
local on_attach = On_attach
local handlers = Handlers
local capabilities = require('lsp.cmp')

require('lspconfig').ccls.setup ({
	capabilities = capabilities,
	on_attach = on_attach,
	handlers=handlers,
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
      excludeArgs = { "-stdc++=20"} ;
    };
		filetypes = { "c", "cpp"};
		compilationDatabaseDirectory = "build";
		-- root_dir = util.root_pattern("build/compile_commands.json", ".ccls", ".git");
  }
})

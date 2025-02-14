return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup()
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()

			local lspconfig = require('lspconfig')
			lspconfig.gdscript.setup({
				capabilities = capabilities
			})
			lspconfig.clangd.setup({
				capabilities = capabilities
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities
			})
			
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {}) 
			vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
			
			vim.keymap.set('i', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', {})
		end
	}
}

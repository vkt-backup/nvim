return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				registries = {
					"github:mason-org/mason-registry",
					"github:Crashdummyy/mason-registry",
				},
				ui = {
					border = "rounded",
				},
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"cssls",
					"html",
					"css_variables",
					"clangd",
					"rust_analyzer",
					"pylsp",
					"phpactor",
					"jdtls",
					"zls"
				},
				auto_install = true,
				ui = {
					border = "rounded",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				tailwindcss = { 
					filetypes = {
						"html",
						"css",
						"scss",
						"javascript",
						"javascriptreact",
						"typescript",
						"typescriptreact",
						"svelte",
						"astro",
						"gopls",
					},
				},
			},
		},
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			local util = require "lspconfig/util"
			lspconfig.tsserver.setup({
				capabilities = capabilities,
				filetypes = { "ts", "tsx", "js", "jsx" },
			})
			lspconfig.cssls.setup({
				capabilities = capabilities,
				filetypes = { "css", "scss" }
			})
			lspconfig.css_variables.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
			})
			lspconfig.phpactor.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
				filetypes = { "html" },
				settings = {
					html = {
						format = {
							enable = false
						},
					},
				},
			})
			lspconfig.jdtls.setup({
				capabilities = capabilities,
			})
			lspconfig.tailwindcss.setup({
				capabilities = capabilities,
				filetypes = { "html", "astro", "jsx", "tsx" },
			})
			lspconfig.csharp_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				root_dir = function(fname)
					return vim.fn.getcwd()
				end,
			})
			lspconfig.astro.setup({
				capabilities = capabilities,
				filetypes = "astro",
			})
			lspconfig.gopls.setup({
				capabilities = capabilities,
				filetypes = { "go", "gomod", "gowork", "gompl" },
				root_dir = util.root_pattern("go.work", "go.mod", ".git"),
				settings = {
					gopls = {
						completeUnimported = true,
					},
				},
			})
			lspconfig.zls.setup({
				capabilities = capabilities,
				filetypes = { "zig" },
			})
			ui = {
				BORDER = "ROUNDED",
			}
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}

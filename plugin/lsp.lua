vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	--{ src = "https://github.com/mason-org/mason.nvim" },
	--{ src = "https://github.com/mason-org/mason-lspconfig.nvim" }
	--{ src = "https://github.com/" }
})

--require("mason").setup()
--[[require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"clangd",
		--"rust_analyser",
		--"gopls",
		--"ts_ls",
		--"cssls",
		--"html",
		--"css_variables",
		--"jdtls"
	}
})]]

--require("lspconfig")

--vim.lsp.config("lua_ls")
vim.lsp.config("clangd", {})
vim.lsp.config("rust_analyzer", {})
vim.lsp.config("ts_ls", {
	settings = {
		typescript = {
			tsdk = "/run/current-system/sw/lib/node_modules/typescript/lib"
		}
	}
})
vim.lsp.config("astro", {
	init_options = {
		typescript = {
			tsdk = "/run/current-system/sw/lib/node_modules/typescript/lib",
		},
	},
})
vim.lsp.enable("gopls", {})
vim.lsp.enable({ "lua_ls", "clangd", "rust_analyzer", "nixd", "html", "cssls", "tl_ls", "astro", "jdtls" })

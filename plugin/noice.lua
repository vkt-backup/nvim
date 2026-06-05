vim.pack.add({
	{ src = "https://github.com/folke/noice.nvim" },
	{ src = "https://github.com/MunifTanjim/nui.nvim" },
	{ src = "https://github.com/rcarriga/nvim-notify" },
})

require("noice").setup({
	cmdline = {
		enabled = true,
		view = "cmdline_popup",
	},

	lsp = {
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true
		},
	},

	routes = {
		{
			view = "cmdline_popup",    -- exibe os comandos centralizados
			filter = { event = "cmdline" }
		}
	},

	popupmenu = {
		enabled = true,
	},

	messages = {
		enabled = true,
	},

	presets = {
		command_palette = true,      -- estilo centralizado
		long_message_to_split = true
	},
})

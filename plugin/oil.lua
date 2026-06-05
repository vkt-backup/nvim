vim.pack.add({
	{ src = "https://github.com/stevearc/oil.nvim" },
	-- Dependecies:
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" }
})

require("oil").setup({
	default_file_explorer = true,
	columns = {
		"icon",
	},
	delete_to_trash = true
})

-- Key mappings
vim.keymap.set("n", "<leader>e", vim.cmd.Oil)

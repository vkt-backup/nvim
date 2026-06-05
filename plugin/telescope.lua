vim.pack.add({
	{ 
		src = "https://github.com/nvim-telescope/telescope.nvim" ,
		branch = "main",
		build = ":TSUpdate"
	},
	-- Dependencies:
	{ src = "https://github.com/nvim-lua/plenary.nvim" }
})

require("telescope").setup()

-- Key mappings
vim.keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>", { desc = "Telescope find files" })
vim.keymap.set('n', '<leader>fg', "<CMD>Telescope live_grep<CR>", { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', "<CMD>Telescope buffers<CR>", { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', "<CMD>Telescope help_tags<CR>", { desc = 'Telescope help tags' })

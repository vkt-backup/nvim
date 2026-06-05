vim.opt.cmdheight = 0
vim.opt.winborder = "rounded"

-- Rounded borders for hover
vim.opt.winborder = "rounded"

-- Rounded borders for right click context menu
vim.opt.pumborder = 'rounded'

vim.diagnostic.config({
	-- Inline warn and error messages
	virtual_text = {
		current_line = true,
		prefix = "●",
		source = "if_many",
		severity = { min = vim.diagnostic.severity.WARN },
	},
	update_in_insert = false,
	underline = true,

	-- Rounded borders for diagnostic menu
	float = {
		border = "rounded",
		source = true
	},

	-- Icons for the left side warn and error indicators
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = " ",
			[vim.diagnostic.severity.WARN]  = " ",
			[vim.diagnostic.severity.INFO]  = " ",
			[vim.diagnostic.severity.HINT]  = "󰌵 "
		}
	}
})

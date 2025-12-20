return {
    { -- SSH copy
		'ojroques/vim-oscyank',
    },
    { -- Git Plugin
		'tpope/vim-fugitive',
    },
    { -- CSS colors
		'brenoprata10/nvim-highlight-colors',
		config = function()
			require('nvim-highlight-colors').setup({})
		end
    },
	{
		'windwp/nvim-autopairs'
	},
}

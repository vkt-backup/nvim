vim.pack.add({
	{ src = "https://github.com/saghen/blink.cmp", version = vim.version.range("1.*") },
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
	{ src = "https://github.com/windwp/nvim-autopairs" },
	{ src = "https://github.com/L3MON4D3/LuaSnip" }
	--{ src = "https://github.com/" }
})

local group = vim.api.nvim_create_augroup("BlinkCmpLazyLoad", { clear = true })

vim.api.nvim_create_autocmd("InsertEnter", {
	pattern = "*",
	group = group,
	once = true,
	callback = function()
		require("blink.cmp").setup({
			keymap = { 
				preset = "none",
				["<C-Space>"] = { "show", "hide" },
				["<CR>"] = { "accept", "fallback" },
				["<Down>"] = { "select_next", "fallback" },
				["<Up>"] = { "select_prev", "fallback" },
				["<Tab>"] = { "snippet_forward", "fallback" },
				["<S-Tab>"] = { "snippet_backward", "fallback" },
			},

			sources = {
				default = { 
					"lsp", 
					"path", 
					"snippets", 
					"buffer" 
				}
			},

			completion = {
				trigger = {
					show_on_insert_on_trigger_character = true
				},

				documentation = {
					auto_show = true,

					window = {
						border = "rounded"
					}
				},

				menu = {
					border = "rounded",
					auto_show = true
				}
			},

			fuzzy = {
				implementation = "lua",
				prebuilt_binaries = {
					download = true,
				}
			}
		})
	end
})

require("nvim-autopairs").setup({
	check_ts = true,
	enable_check_bracket_line = true,
	enable_moveright = true,
	map_cr = true,
	map_bs = true,
})

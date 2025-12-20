local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none", fg = "#ffffff" })
	vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#ffffff" })
	vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })

	vim.api.nvim_set_hl(0, "CmpItem", { bg = "none" })
    vim.api.nvim_set_hl(0, "CmpItemAbbr", { bg = "none" })
	vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NotifyBackground", { bg = "#ffffff" })

end

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        enable_transparency()
    end
})

return {
--[[
    {
	"folke/tokyonight.nvim",
	config = function()
	    vim.cmd.colorscheme "tokyonight"
	    enable_transparency()
	end
    },
    {
	"nvim-lualine/lualine.nvim",
	dependencies = {
	    "nvim-tree/nvim-web-devicons",
	},
	opts = {
	    theme = 'tokyonight'
	}
    },
	 ]]
	{
	"Mofiqul/dracula.nvim",
		config = function ()
			vim.cmd.colorscheme "dracula" 
		end
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			theme = "auto"
		},
		globalstatus = true,
	},
	vim.diagnostic.config({
		float = {
		border = "rounded", -- opções: "single", "double", "rounded", "solid", "shadow"
	},
})
}

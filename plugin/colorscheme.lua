vim.pack.add({
	--{ src = "https://github.com/navarasu/onedark.nvim" }
	{ src = "https://github.com/scottmckendry/cyberdream.nvim" }
})

require("cyberdream").setup({
	style = "dark",
	transparent = true
})

require("cyberdream").load()

local function enable_transparency()
    local groups = {
        "Normal",
        "NormalFloat",
        "FloatBorder",
        "TelescopeNormal",
        "TelescopeBorder",
        "TelescopePromptNormal",
        "TelescopePromptBorder",
        "SignColumn",
        "NvimTreeNormal",
		"BlinkCmpMenu",
		"BlinkCmpMenuBorder",
		"BlinkCmpDoc",
		"BlinkCmpDocBorder",
		"BlinkCmpSignatureHelp",
		"BlinkCmpSignatureHelpBorder",
    }

    for _, group in ipairs(groups) do
        vim.api.nvim_set_hl(0, group, { bg = "none" })
    end
end

vim.api.nvim_create_autocmd("ColorScheme", {
    callback = enable_transparency,
})

enable_transparency()

--[[
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

vim.opt.termguicolors = false
vim.cmd("colorscheme onedark")]]

terminal = function()
	for _, buf in ipairs(vim.api.nvim_list_bufs()) do
		if vim.api.nvim_buf_is_valid(buf) and vim.bo[buf].buftype == "terminal" then
			-- Fecha a janela que contém esse buffer (se estiver visível)
			for _, win in ipairs(vim.api.nvim_list_wins()) do
				if vim.api.nvim_win_get_buf(win) == buf then
					vim.api.nvim_win_close(win, true)
					return
				end
			end
		end
	end
	vim.cmd("belowright 10split | terminal")
	vim.cmd("startinsert")
end

vim.g.mapleader = " "
--vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
vim.keymap.set({ "n", "t" }, "<leader>t", terminal)
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)

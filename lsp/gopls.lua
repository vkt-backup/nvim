return {
	capabilities = capabilities,
	filetypes = { "go", "gomod", "gowork", "gompl" },
	root_markers = { "go.work", "go.mod", ".git" },
	settings = {
		gopls = {
			completeUnimported = true,
		}
	}
}

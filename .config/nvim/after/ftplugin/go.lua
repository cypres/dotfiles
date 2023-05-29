vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

vim.api.nvim_create_autocmd('BufWritePre', {
	pattern = '*.go',
	callback = function()
		vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })
	end
})

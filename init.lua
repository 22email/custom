vim.opt.relativenumber = true
vim.opt.smartindent = true

vim.opt.clipboard = ""
vim.opt.conceallevel = 1

vim.api.nvim_create_autocmd("FileType", {
	pattern = "cs",
	command = "setlocal shiftwidth=4 tabstop=4"
})


vim.g.mapleader=" "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("v", "<C-c>", "<Esc>")
vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>') 

local viewFile = function()
    -- Uses inlyne as a markdown viewer
    if vim.bo.filetype == 'markdown' then
        local localFilePath = vim.fn.expand('%:.')
        local mdCommand = '!inlyne \'' .. localFilePath .. '\''
        vim.cmd(mdCommand)

    -- Compiles the tex file and then opens it in firefox
    elseif vim.bo.filetype == 'tex' then
        local localFilePath = vim.fn.expand('%:.')
        local pdfLatexCommand = '!pdflatex \'' .. localFilePath .. '\''
        vim.cmd(pdfLatexCommand)
        local fileName = vim.fn.expand('%:t')
        local openCommand = "!firefox \'" .. string.sub(fileName, 1, -4) .. "pdf\'"
        vim.cmd(openCommand)
    else
        print('Not Valid File to View')
    end
end

vim.keymap.set("n", "<leader>v", viewFile)

vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.cursorline = true

vim.opt.wrap = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.opt.colorcolumn = "80"

vim.api.nvim_set_option("clipboard", "unnamed")

vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3

vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, {
    pattern = {"*.md", "*.txt", "*.tex"},
    command = "setlocal textwidth=80",
})

-- vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, {
--     pattern = {".md"},
--     callback = function()
--         vim.api.nvim_buf_set_option(vim.api.nvim_get_current_buf(), "filetype", "markdown")
--     end
-- })
--
-- vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, {
--     pattern = {".tex"},
--     callback = function()
--         vim.cmd("syntax on")
--         vim.api.nvim_buf_set_option(vim.api.nvim_get_current_buf(), "filetype", "latex")
--     end
-- })

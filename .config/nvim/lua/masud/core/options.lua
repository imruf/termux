vim.cmd("let g:netrw_liststyle =3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.wrap = true

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

vim.api.nvim_create_autocmd( "FileType", {
   pattern = "*",
  callback = function ()
    vim.opt_local.formatoptions:remove({'r', 'o'})
  end,
})


vim.api.nvim_create_autocmd( "VimLeave", {
  pattern = "*.tex",
  command = "!texclear %",} )

vim.cmd("let g:netrw_liststryle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

--tabs & indent
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = false --expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50

opt.colorcolumn = "120"

--turn on termguicolors for mcolorschem to work
--( have to use itemr2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorscheme that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

--backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent end of line or insert mode start position

--clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split window
opt.splitright = true -- split vertical window on right
opt.splitbelow = true -- split horizontal window to the bottom

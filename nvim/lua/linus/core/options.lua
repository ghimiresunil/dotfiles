-- Set terminal emulator
vim.g.terminal_emulator = "konsole-Sunil"

-- Set netrw list style
vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt -- for conciseness

-- line numbers
opt.number = true -- shows absolute line number
opt.relativenumber = false -- show relative line numbers

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.softtabstop = 2 -- consistent tab/space behavior
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance
opt.termguicolors = true -- enable true color support
opt.background = "dark" -- set background to dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

-- set grep program to ripgrep
opt.grepprg = "rg --vimgrep"

-- syntax and encoding
opt.syntax = "on"
opt.encoding = "utf-8"

-- allow hidden buffers
opt.hidden = true

-- show command and match
opt.showcmd = true
opt.showmatch = true

-- set leader key
vim.g.mapleader = " "

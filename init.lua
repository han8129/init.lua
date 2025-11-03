-- ~/.config/nvim/init.lua
-- Modern Neovim config: Zenburn + :find + H/L shift + J/K move

-- === RECURSIVE FILE SEARCH WITH :find ===
vim.o.path = '**'
vim.o.wildmenu = true
vim.o.wildmode = 'longest:full,full'
vim.o.wildignore = '*.o,*.obj,*~,*.pyc,*/.git/*,*/node_modules/*'

-- === General Settings ===
vim.o.termguicolors = true
vim.o.background = 'dark'

-- Line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Indentation
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.smartindent = true

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = true

-- UI
vim.o.scrolloff = 8
vim.o.cursorline = true
vim.o.signcolumn = 'yes'
vim.o.colorcolumn = '100'

-- Behavior
vim.o.hidden = true
vim.o.mouse = 'a'
vim.o.updatetime = 300
vim.o.timeoutlen = 500
vim.o.undofile = true
vim.o.swapfile = false

-- Splitting
vim.o.splitbelow = true
vim.o.splitright = true

-- === Key Mappings ===
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- ; to : (command mode), : to ; (repeat f/t)
map('n', ';', ':', opts)
map('n', ':', ';', opts)

-- Window navigation
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- Resize windows
map('n', '<C-Up>', ':resize +2<CR>', opts)
map('n', '<C-Down>', ':resize -2<CR>', opts)
map('n', '<C-Left>', ':vertical resize -2<CR>', opts)
map('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Clear search highlight
map('n', '<Esc>', ':noh<CR>', opts)

-- === VISUAL MODE: Move & Shift blocks ===
-- Move up/down
map('v', 'J', ":m '>+1<CR>gv=gv", opts)
map('v', 'K', ":m '<-2<CR>gv=gv", opts)

-- Visual-block move
map('x', 'J', ":move '>+1<CR>gv", opts)
map('x', 'K', ":move '<-2<CR>gv", opts)

-- Shift left/right with H and L
map('v', 'L', '>gv', opts)
map('v', 'H', '<gv', opts)
map('x', 'L', '>gv', opts)
map('x', 'H', '<gv', opts)

-- === Embedded Zenburn Theme ===
vim.cmd [[
highlight Normal       guibg=#3f3f3f guifg=#dcdccc
highlight Comment      guifg=#7f9f7f
highlight Constant     guifg=#dca3a3
highlight Identifier   guifg=#f0dfaf
highlight Statement    guifg=#f0dfaf
highlight PreProc      guifg=#dfaf8f
highlight Type         guifg=#e3ceab
highlight Special      guifg=#cc9393
highlight CursorLine   guibg=#4a4a4a
highlight LineNr       guifg=#5f5f5f guibg=#3a3a3a
highlight CursorLineNr guifg=#f0dfaf guibg=#4a4a4a
highlight Visual       guibg=#5f5f5f
highlight Pmenu        guibg=#2b2b2b guifg=#cccccc
highlight PmenuSel     guibg=#4a4a4a guifg=#ffffff
]]

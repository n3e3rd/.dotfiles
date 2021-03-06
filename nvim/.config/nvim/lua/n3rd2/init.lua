require('n3rd2.lsp')
require('n3rd2.specs')
require('n3rd2.cmp')
require('feline').setup()

vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4

vim.wo.number = true

vim.g.mapleader = " "

vim.opt.encoding="utf-8"

vim.o.completeopt="menuone,noinsert,noselect"
vim.o.shortmess = vim.o.shortmess .. "c"

local keymap = vim.api.nvim_set_keymap
-- basic mappings 
keymap('n', "<leader>oo", ":only<CR>", {})
keymap('n', "<leader>qq", ":q!<CR>", {})
keymap('n', "<leader>/", ":noh<CR>", {})

keymap('n', "<leader>h", ":wincmd h<CR>", {})
keymap('n', "<leader>j", ":wincmd j<CR>", {})
keymap('n', "<leader>k", ":wincmd k<CR>", {})
keymap('n', "<leader>l", ":wincmd l<CR>", {})
keymap('n', "gb", "<C-O>", {})

-- NERDTree mappings
keymap('n', "<leader>pt", ":NERDTreeToggle<CR>", {})
keymap('n', "<leader>pf", ":NERDTreeFind ", {})

-- fugitive mappings
keymap('n', "<leader>fa", ":Git add .<CR>", {})
keymap('n', "<leader>fp", ":Git push<CR>", {})
keymap('n', "<leader>fs", ":Git status<CR>", {})
keymap('n', "<leader>fd", ":Gvdiff :0<CR>", {})
keymap('n', "<leader>fj", ":diffget //2<CR>", {}) -- select from left
keymap('n', "<leader>fk", ":diffget //3<CR>", {}) -- select from right
keymap('n', "<leader>fm", ":Gdiffsplit!<CR>", {})
keymap('n', "<leader>fc", ":Git commit<CR>", {})

-- Telescope mappings
keymap('n', "<leader>ff", ":Telescope find_files<CR>", {})
keymap('n', "<leader>fg", ":Telescope live_grep<CR>", {})
keymap('n', "<leader>fh", ":Telescope help_tags<CR>", {})

-- Rust Tools 
keymap('n', "J", ":RustHoverAction<CR>", {})

----- Requires -----
require'lspconfig'.pyright.setup{}
require'nvim-tree'.setup {}

----- Keymaps -----
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '

map('i', 'jj', '<esc>')
map('n', '<esc>', '<cmd>noh<cr>')
map('n', 'J', '<cmd>tabp<cr>')
map('n', 'K', '<cmd>tabn<cr>')
map('n', 'Y', 'y$')
map('n', '<leader>r', '<cmd>so %<cr>')

map ('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map ('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
map ('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
map ('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')

map ('n', '<c-t>', '<cmd>NvimTreeToggle<cr>')
map ('n', '`', '<cmd>NvimTreeFocus<cr>')

----- Options -----
local g = vim.g
local opt = vim.opt

opt.clipboard = 'unnamed'
opt.swapfile = false
opt.completeopt = 'menuone,noinsert,noselect'
opt.number = true
opt.relativenumber = true
opt.ignorecase = true
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
opt.hidden = true

----- Scheme -----
vim.cmd[[colorscheme nord]]

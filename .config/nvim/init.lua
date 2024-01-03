local g = vim.g
-- set  options for buffer-scoped and window-scoped
local o = vim.o
o.number = true
o.numberwidth = 5
o.relativenumber = true
o.expandtab = true
o.clipboard = 'unnamedplus'
o.smoothscroll = true

g.mapleader = ' '
g.maplocalleader = ' '
-- o.cursorline = true
-- o.termguicolors	 = true
vim.keymap.set('n', 'gsw', ':%s/<C-r><C-w>/', { desc = 'Replace word under cursor' })
vim.keymap.set(
  { 'n', 'v' },
  'gsW',
  function()
    return ':' .. vim.fn.line('.') .. 's/<C-r><C-w>/ /g<left><left><C-h>'
  end,
  { expr = true, desc = 'Replace word under cursor on current line' }
)
